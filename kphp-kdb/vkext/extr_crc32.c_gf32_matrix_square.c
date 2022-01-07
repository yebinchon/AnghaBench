
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int gf32_matrix_times (unsigned int*,unsigned int) ;

__attribute__((used)) static void gf32_matrix_square (unsigned *square, unsigned *matrix) {
  int n = 0;
  do {
    square[n] = gf32_matrix_times (matrix, matrix[n]);
  } while (++n < 32);
}
