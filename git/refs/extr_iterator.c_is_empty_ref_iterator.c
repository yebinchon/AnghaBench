
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int * vtable; } ;


 int empty_ref_iterator_vtable ;

int is_empty_ref_iterator(struct ref_iterator *ref_iterator)
{
 return ref_iterator->vtable == &empty_ref_iterator_vtable;
}
