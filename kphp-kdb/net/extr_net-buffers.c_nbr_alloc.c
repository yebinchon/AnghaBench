
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* nb_allocator_t ;


 scalar_t__ alloc_head_buffer () ;
 void* nb_alloc (scalar_t__,int) ;

void *nbr_alloc (nb_allocator_t pH, int len) {
  if (!*pH) {
    *pH = alloc_head_buffer();
  }
  return nb_alloc (*pH, len);
}
