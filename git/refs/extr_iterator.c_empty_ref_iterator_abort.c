
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int dummy; } ;


 int ITER_DONE ;
 int base_ref_iterator_free (struct ref_iterator*) ;

__attribute__((used)) static int empty_ref_iterator_abort(struct ref_iterator *ref_iterator)
{
 base_ref_iterator_free(ref_iterator);
 return ITER_DONE;
}
