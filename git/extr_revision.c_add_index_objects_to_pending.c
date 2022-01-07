
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct worktree {scalar_t__ is_current; } ;
struct rev_info {scalar_t__ single_worktree; TYPE_1__* repo; } ;
struct index_state {int * member_0; } ;
struct TYPE_2__ {struct index_state* index; } ;


 int discard_index (struct index_state*) ;
 int do_add_index_objects_to_pending (struct rev_info*,struct index_state*,unsigned int) ;
 int free_worktrees (struct worktree**) ;
 int get_worktree_git_dir (struct worktree*) ;
 struct worktree** get_worktrees (int ) ;
 scalar_t__ read_index_from (struct index_state*,int ,int ) ;
 int repo_read_index (TYPE_1__*) ;
 int worktree_git_path (struct worktree*,char*) ;

void add_index_objects_to_pending(struct rev_info *revs, unsigned int flags)
{
 struct worktree **worktrees, **p;

 repo_read_index(revs->repo);
 do_add_index_objects_to_pending(revs, revs->repo->index, flags);

 if (revs->single_worktree)
  return;

 worktrees = get_worktrees(0);
 for (p = worktrees; *p; p++) {
  struct worktree *wt = *p;
  struct index_state istate = { ((void*)0) };

  if (wt->is_current)
   continue;

  if (read_index_from(&istate,
        worktree_git_path(wt, "index"),
        get_worktree_git_dir(wt)) > 0)
   do_add_index_objects_to_pending(revs, &istate, flags);
  discard_index(&istate);
 }
 free_worktrees(worktrees);
}
