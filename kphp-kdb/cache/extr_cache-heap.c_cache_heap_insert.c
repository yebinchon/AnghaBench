
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int max_size; scalar_t__ (* compare ) (void*,void*) ;void** H; } ;
typedef TYPE_1__ cache_heap_t ;


 int heap_sift (TYPE_1__*,void*,int) ;
 scalar_t__ stub1 (void*,void*) ;
 scalar_t__ stub2 (void*,void*) ;

void cache_heap_insert (cache_heap_t *self, void *E) {
  if (self->size < self->max_size) {
    int i = ++(self->size);
    while (i > 1) {
      int j = i >> 1;
      if (self->compare (self->H[j], E) >= 0) {
        break;
      }
      self->H[i] = self->H[j];
      i = j;
    }
    self->H[i] = E;
  } else {
    if (self->compare (self->H[1], E) > 0) {
      heap_sift (self, E, 1);
    }
  }
}
