
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct ref_iterator {int flags; int oid; int refname; } ;
typedef int (* each_repo_ref_fn ) (struct repository*,int ,int ,int ,void*) ;


 int ITER_ERROR ;
 int ITER_OK ;
 struct ref_iterator* current_ref_iter ;
 int ref_iterator_abort (struct ref_iterator*) ;
 int ref_iterator_advance (struct ref_iterator*) ;

int do_for_each_repo_ref_iterator(struct repository *r, struct ref_iterator *iter,
      each_repo_ref_fn fn, void *cb_data)
{
 int retval = 0, ok;
 struct ref_iterator *old_ref_iter = current_ref_iter;

 current_ref_iter = iter;
 while ((ok = ref_iterator_advance(iter)) == ITER_OK) {
  retval = fn(r, iter->refname, iter->oid, iter->flags, cb_data);
  if (retval) {





   ref_iterator_abort(iter);
   goto out;
  }
 }

out:
 current_ref_iter = old_ref_iter;
 if (ok == ITER_ERROR)
  return -1;
 return retval;
}
