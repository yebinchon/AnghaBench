
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_iterator {TYPE_1__* vtable; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int (* peel ) (struct ref_iterator*,struct object_id*) ;} ;


 int stub1 (struct ref_iterator*,struct object_id*) ;

int ref_iterator_peel(struct ref_iterator *ref_iterator,
        struct object_id *peeled)
{
 return ref_iterator->vtable->peel(ref_iterator, peeled);
}
