
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int picoIndex_t ;
struct TYPE_3__ {int last; int data; } ;
typedef TYPE_1__ IndexArray ;


 int _pico_calloc (size_t,int) ;

void indexarray_reserve(IndexArray* self, size_t size) {
 self->data = self->last = _pico_calloc(size, sizeof(picoIndex_t));
}
