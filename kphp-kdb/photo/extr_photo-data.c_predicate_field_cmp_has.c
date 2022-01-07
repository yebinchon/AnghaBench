
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* field; } ;
typedef TYPE_2__ predicate_field_cmp ;
struct TYPE_8__ {int * obj; int * dyn; } ;
typedef TYPE_3__ actual_object ;
struct TYPE_6__ {int id; } ;


 scalar_t__ has_field (int *,int ) ;

int predicate_field_cmp_has (predicate_field_cmp *self, actual_object *ao) {
  return (ao->dyn != ((void*)0) && has_field (ao->dyn, self->field->id)) ||
         (ao->obj != ((void*)0) && has_field (ao->obj, self->field->id));
}
