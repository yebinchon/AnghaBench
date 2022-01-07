
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXH ;
 int* h_key ;
 scalar_t__* h_val ;

void h_rem (int key) {
  int i = key & (MAXH - 1);
  while (h_key[i] && h_key[i] != key) {
    if (++i == MAXH) {
      i = 0;
    }
  }

  h_val[i] = 0;
}
