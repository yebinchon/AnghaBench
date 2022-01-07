
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {scalar_t__ is_current; } ;
struct all_refs_cb {struct worktree* wt; } ;


 int free_worktrees (struct worktree**) ;
 int get_worktree_ref_store (struct worktree*) ;
 struct worktree** get_worktrees (int ) ;
 int handle_one_reflog ;
 int refs_for_each_reflog (int ,int ,struct all_refs_cb*) ;

__attribute__((used)) static void add_other_reflogs_to_pending(struct all_refs_cb *cb)
{
 struct worktree **worktrees, **p;

 worktrees = get_worktrees(0);
 for (p = worktrees; *p; p++) {
  struct worktree *wt = *p;

  if (wt->is_current)
   continue;

  cb->wt = wt;
  refs_for_each_reflog(get_worktree_ref_store(wt),
         handle_one_reflog,
         cb);
 }
 free_worktrees(worktrees);
}
