# Makefile for Riemann Zeta Function Zero Counter

# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -O3 -Wall -std=c++11 -march=native

# Libraries
LIBS = -lm

# Target executable name
TARGET = RiemannSiegel

# Source file
SRC = RiemannSiegel.cpp

# Force rebuilding every time
.PHONY: all
all: $(TARGET)

# Compile the program, always rebuilding
$(TARGET): $(SRC) FORCE
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET) $(LIBS)

# Phony target to force rebuilding
FORCE:

# Clean up build artifacts
clean:
	rm -f $(TARGET)

# Rebuild the project from scratch
rebuild: clean all

.PHONY: all clean rebuild FORCE