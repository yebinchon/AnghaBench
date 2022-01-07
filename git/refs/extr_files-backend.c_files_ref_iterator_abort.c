
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int dummy; } ;
struct files_ref_iterator {scalar_t__ iter0; } ;


 int ITER_DONE ;
 int base_ref_iterator_free (struct ref_iterator*) ;
 int ref_iterator_abort (scalar_t__) ;

__attribute__((used)) static int files_ref_iterator_abort(struct ref_iterator *ref_iterator)
{
 struct files_ref_iterator *iter =
  (struct files_ref_iterator *)ref_iterator;
 int ok = ITER_DONE;

 if (iter->iter0)
  ok = ref_iterator_abort(iter->iter0);

 base_ref_iterator_free(ref_iterator);
 return ok;
}
