
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {scalar_t__ is_detached; scalar_t__ is_bare; } ;
struct ref_store {int dummy; } ;


 int REF_ISSYMREF ;
 int free_worktrees (struct worktree**) ;
 struct ref_store* get_worktree_ref_store (struct worktree*) ;
 struct worktree** get_worktrees (int ) ;
 scalar_t__ is_worktree_being_bisected (struct worktree*,char const*) ;
 scalar_t__ is_worktree_being_rebased (struct worktree*,char const*) ;
 char* refs_resolve_ref_unsafe (struct ref_store*,char const*,int ,int *,int*) ;
 int strcmp (char const*,char const*) ;

const struct worktree *find_shared_symref(const char *symref,
       const char *target)
{
 const struct worktree *existing = ((void*)0);
 static struct worktree **worktrees;
 int i = 0;

 if (worktrees)
  free_worktrees(worktrees);
 worktrees = get_worktrees(0);

 for (i = 0; worktrees[i]; i++) {
  struct worktree *wt = worktrees[i];
  const char *symref_target;
  struct ref_store *refs;
  int flags;

  if (wt->is_bare)
   continue;

  if (wt->is_detached && !strcmp(symref, "HEAD")) {
   if (is_worktree_being_rebased(wt, target)) {
    existing = wt;
    break;
   }
   if (is_worktree_being_bisected(wt, target)) {
    existing = wt;
    break;
   }
  }

  refs = get_worktree_ref_store(wt);
  symref_target = refs_resolve_ref_unsafe(refs, symref, 0,
       ((void*)0), &flags);
  if ((flags & REF_ISSYMREF) &&
      symref_target && !strcmp(symref_target, target)) {
   existing = wt;
   break;
  }
 }

 return existing;
}
