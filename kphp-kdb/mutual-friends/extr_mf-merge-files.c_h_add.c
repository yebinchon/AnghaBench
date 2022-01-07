
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXH ;
 int* h_key ;
 int* h_val ;

int h_add (int key, int val) {
  int i = key & (MAXH - 1);
  while (h_key[i] && h_key[i] != key) {
    if (++i == MAXH) {
      i = 0;
    }
  }
  int res = -1;
  if (h_key[i] == 0) {
    h_key[i] = key;
    res = i;
  }

  h_val[i] += val;

  return res;
}
