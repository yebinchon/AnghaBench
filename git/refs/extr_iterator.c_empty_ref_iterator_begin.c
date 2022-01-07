
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int dummy; } ;
struct empty_ref_iterator {struct ref_iterator base; } ;


 int base_ref_iterator_init (struct ref_iterator*,int *,int) ;
 int empty_ref_iterator_vtable ;
 struct empty_ref_iterator* xcalloc (int,int) ;

struct ref_iterator *empty_ref_iterator_begin(void)
{
 struct empty_ref_iterator *iter = xcalloc(1, sizeof(*iter));
 struct ref_iterator *ref_iterator = &iter->base;

 base_ref_iterator_init(ref_iterator, &empty_ref_iterator_vtable, 1);
 return ref_iterator;
}
