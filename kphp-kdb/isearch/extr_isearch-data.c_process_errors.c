
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALPH_N ;
 double** prob ;

void process_errors (char *errors[ALPH_N], double pr) {
  int i, j;
  for (i = 0; i < ALPH_N; i++) {
    int A = (unsigned char)errors[i][0] % 224;
    for (j = 1; errors[i][j]; j++)
      prob[A][(unsigned char)errors[i][j] % 224] = pr;
  }
}
