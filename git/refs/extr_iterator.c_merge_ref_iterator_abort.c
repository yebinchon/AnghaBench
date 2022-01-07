
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int dummy; } ;
struct merge_ref_iterator {scalar_t__ iter1; scalar_t__ iter0; } ;


 int ITER_DONE ;
 int ITER_ERROR ;
 int base_ref_iterator_free (struct ref_iterator*) ;
 int ref_iterator_abort (scalar_t__) ;

__attribute__((used)) static int merge_ref_iterator_abort(struct ref_iterator *ref_iterator)
{
 struct merge_ref_iterator *iter =
  (struct merge_ref_iterator *)ref_iterator;
 int ok = ITER_DONE;

 if (iter->iter0) {
  if (ref_iterator_abort(iter->iter0) != ITER_DONE)
   ok = ITER_ERROR;
 }
 if (iter->iter1) {
  if (ref_iterator_abort(iter->iter1) != ITER_DONE)
   ok = ITER_ERROR;
 }
 base_ref_iterator_free(ref_iterator);
 return ok;
}
