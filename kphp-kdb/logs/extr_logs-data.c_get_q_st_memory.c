
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FN ;
 scalar_t__ map_int_int_get_memory_used (int *) ;
 scalar_t__ map_ll_int_get_memory_used (int *) ;
 int * q_st_int ;
 int * q_st_ll ;
 scalar_t__* std_t ;

long get_q_st_memory (void) {
  long res = 0;
  int i;
  for (i = 0; i < FN; i++) {
    if (std_t[i]) {
      res += map_ll_int_get_memory_used (&q_st_ll[i]);
    } else {
      res += map_int_int_get_memory_used (&q_st_int[i]);
    }
  }
  return res;
}
