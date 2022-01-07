
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int dummy; } ;
struct merge_ref_iterator {int * current; void* cb_data; int * select; struct ref_iterator* iter1; struct ref_iterator* iter0; struct ref_iterator base; } ;
typedef int ref_iterator_select_fn ;


 int base_ref_iterator_init (struct ref_iterator*,int *,int) ;
 int merge_ref_iterator_vtable ;
 struct merge_ref_iterator* xcalloc (int,int) ;

struct ref_iterator *merge_ref_iterator_begin(
  int ordered,
  struct ref_iterator *iter0, struct ref_iterator *iter1,
  ref_iterator_select_fn *select, void *cb_data)
{
 struct merge_ref_iterator *iter = xcalloc(1, sizeof(*iter));
 struct ref_iterator *ref_iterator = &iter->base;
 base_ref_iterator_init(ref_iterator, &merge_ref_iterator_vtable, ordered);
 iter->iter0 = iter0;
 iter->iter1 = iter1;
 iter->select = select;
 iter->cb_data = cb_data;
 iter->current = ((void*)0);
 return ref_iterator;
}
