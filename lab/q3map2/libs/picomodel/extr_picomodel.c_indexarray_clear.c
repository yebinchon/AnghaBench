
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ IndexArray ;


 int _pico_free (int ) ;

void indexarray_clear(IndexArray* self) {
 _pico_free(self->data);
}
