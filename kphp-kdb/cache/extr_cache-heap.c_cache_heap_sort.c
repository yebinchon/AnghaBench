
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; void** H; } ;
typedef TYPE_1__ cache_heap_t ;


 int heap_sift (TYPE_1__*,void*,int) ;

int cache_heap_sort (cache_heap_t *self) {
  int r = self->size;
  while (self->size > 1) {
    void *E = self->H[1];
    heap_sift (self, self->H[(self->size)--], 1);
    self->H[self->size+1] = E;
  }
  self->size = 0;
  return r;
}
