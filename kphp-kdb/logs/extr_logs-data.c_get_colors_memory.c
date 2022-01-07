
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FN ;
 int * color_int ;
 int * color_ll ;
 scalar_t__ map_int_int_get_memory_used (int *) ;
 scalar_t__ map_ll_int_get_memory_used (int *) ;
 scalar_t__* std_t ;

long get_colors_memory (void) {
  long res = 0;
  int i;
  for (i = 0; i < FN; i += 1 + std_t[i]) {
    if (std_t[i]) {
      res += map_ll_int_get_memory_used (&color_ll[i]);
    } else {
      res += map_int_int_get_memory_used (&color_int[i]);
    }
  }
  return res;
}
