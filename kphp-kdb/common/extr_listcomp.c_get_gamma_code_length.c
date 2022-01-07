
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int bsr (unsigned int) ;

int get_gamma_code_length (unsigned int d) {
  assert (d > 0);
  int k = bsr (d);
  return (2 * k + 1);
}
