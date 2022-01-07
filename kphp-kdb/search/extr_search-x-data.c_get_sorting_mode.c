
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* tbl_sorting_mode ;

int get_sorting_mode (int c) {
  if (c < 0 || c >= 128) return -1;
  return tbl_sorting_mode[c];
}
