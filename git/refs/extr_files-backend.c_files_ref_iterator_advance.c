
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ref_iterator {int dummy; } ;
struct TYPE_3__ {int flags; int oid; int refname; } ;
struct files_ref_iterator {int flags; TYPE_2__* iter0; TYPE_1__ base; } ;
struct TYPE_4__ {int flags; int oid; int refname; } ;


 int DO_FOR_EACH_INCLUDE_BROKEN ;
 int DO_FOR_EACH_PER_WORKTREE_ONLY ;
 scalar_t__ ITER_DONE ;
 int ITER_ERROR ;
 int ITER_OK ;
 scalar_t__ REF_TYPE_PER_WORKTREE ;
 scalar_t__ ref_iterator_abort (struct ref_iterator*) ;
 int ref_iterator_advance (TYPE_2__*) ;
 int ref_resolves_to_object (int ,int ,int ) ;
 scalar_t__ ref_type (int ) ;

__attribute__((used)) static int files_ref_iterator_advance(struct ref_iterator *ref_iterator)
{
 struct files_ref_iterator *iter =
  (struct files_ref_iterator *)ref_iterator;
 int ok;

 while ((ok = ref_iterator_advance(iter->iter0)) == ITER_OK) {
  if (iter->flags & DO_FOR_EACH_PER_WORKTREE_ONLY &&
      ref_type(iter->iter0->refname) != REF_TYPE_PER_WORKTREE)
   continue;

  if (!(iter->flags & DO_FOR_EACH_INCLUDE_BROKEN) &&
      !ref_resolves_to_object(iter->iter0->refname,
         iter->iter0->oid,
         iter->iter0->flags))
   continue;

  iter->base.refname = iter->iter0->refname;
  iter->base.oid = iter->iter0->oid;
  iter->base.flags = iter->iter0->flags;
  return ITER_OK;
 }

 iter->iter0 = ((void*)0);
 if (ref_iterator_abort(ref_iterator) != ITER_DONE)
  ok = ITER_ERROR;

 return ok;
}
