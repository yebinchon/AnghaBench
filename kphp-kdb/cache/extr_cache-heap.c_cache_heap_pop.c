
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; void** H; } ;
typedef TYPE_1__ cache_heap_t ;


 int heap_sift (TYPE_1__*,void*,int) ;

void *cache_heap_pop (cache_heap_t *self) {
  if (self->size == 0) {
    return ((void*)0);
  }
  void *E = self->H[1];
  heap_sift (self, self->H[(self->size)--], 1);
  return E;
}
