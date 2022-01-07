
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_iterator {int dummy; } ;
struct TYPE_2__ {int refname; } ;
struct packed_ref_iterator {int flags; int oid; TYPE_1__ base; } ;


 int DO_FOR_EACH_INCLUDE_BROKEN ;
 int DO_FOR_EACH_PER_WORKTREE_ONLY ;
 scalar_t__ ITER_DONE ;
 int ITER_ERROR ;
 int ITER_OK ;
 scalar_t__ REF_TYPE_PER_WORKTREE ;
 int next_record (struct packed_ref_iterator*) ;
 scalar_t__ ref_iterator_abort (struct ref_iterator*) ;
 int ref_resolves_to_object (int ,int *,int) ;
 scalar_t__ ref_type (int ) ;

__attribute__((used)) static int packed_ref_iterator_advance(struct ref_iterator *ref_iterator)
{
 struct packed_ref_iterator *iter =
  (struct packed_ref_iterator *)ref_iterator;
 int ok;

 while ((ok = next_record(iter)) == ITER_OK) {
  if (iter->flags & DO_FOR_EACH_PER_WORKTREE_ONLY &&
      ref_type(iter->base.refname) != REF_TYPE_PER_WORKTREE)
   continue;

  if (!(iter->flags & DO_FOR_EACH_INCLUDE_BROKEN) &&
      !ref_resolves_to_object(iter->base.refname, &iter->oid,
         iter->flags))
   continue;

  return ITER_OK;
 }

 if (ref_iterator_abort(ref_iterator) != ITER_DONE)
  ok = ITER_ERROR;

 return ok;
}
