
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double word_weight (int) ;

double similarity (int *x, int *y, double *a, double *b) {
  *a = 0, *b = 0;

  int xi = 0, yi = 0;
  while (x[xi] || y[yi]) {
    if (x[xi] == y[yi]) {
      *a += 2.0 * word_weight (x[xi]);
      xi++;
      yi++;
    } else {
      if (x[xi] && (y[yi] == 0 || x[xi] < y[yi])) {
        *b += word_weight (x[xi]);
        xi++;
      } else {
        *b += word_weight (y[yi]);
        yi++;
      }
    }
  }

  if (*a + *b < 1e-9) {
    return -1.0;
  }
  return (*a - *b) * 1.0 / (*a + *b);
}
