
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_iterator {TYPE_1__* vtable; } ;
struct TYPE_2__ {int (* advance ) (struct ref_iterator*) ;} ;


 int stub1 (struct ref_iterator*) ;

int ref_iterator_advance(struct ref_iterator *ref_iterator)
{
 return ref_iterator->vtable->advance(ref_iterator);
}
