
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator_vtable {int dummy; } ;
struct ref_iterator {int ordered; scalar_t__ flags; int * oid; int * refname; struct ref_iterator_vtable* vtable; } ;



void base_ref_iterator_init(struct ref_iterator *iter,
       struct ref_iterator_vtable *vtable,
       int ordered)
{
 iter->vtable = vtable;
 iter->ordered = !!ordered;
 iter->refname = ((void*)0);
 iter->oid = ((void*)0);
 iter->flags = 0;
}
