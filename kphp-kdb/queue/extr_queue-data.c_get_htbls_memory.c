
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alias ;
 int h_qkey ;
 int h_queue ;
 int h_subscribers ;
 long hset_llp_get_memory_used (int *) ;
 long map_int_int_get_memory_used (int *) ;
 long map_ll_vptr_get_memory_used (int *) ;
 int secrets ;
 long shmap_string_vptr_get_memory_used (int *) ;

long get_htbls_memory (void) {
  return shmap_string_vptr_get_memory_used (&h_queue) +
         shmap_string_vptr_get_memory_used (&h_qkey) +
         map_int_int_get_memory_used (&secrets) +
         map_ll_vptr_get_memory_used (&alias) +
         hset_llp_get_memory_used (&h_subscribers);
}
