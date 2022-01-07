
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_worktree_prune_options ;


 int git_worktree_prune_options_init (int *,unsigned int) ;

int git_worktree_pruneinit_options(git_worktree_prune_options *opts,
 unsigned int version)
{
 return git_worktree_prune_options_init(opts, version);
}
