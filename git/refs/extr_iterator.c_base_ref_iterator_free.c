
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int * vtable; } ;


 int free (struct ref_iterator*) ;

void base_ref_iterator_free(struct ref_iterator *iter)
{

 iter->vtable = ((void*)0);
 free(iter);
}
