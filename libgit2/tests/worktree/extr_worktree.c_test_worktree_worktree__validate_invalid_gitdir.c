
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* gitdir_path; } ;
typedef TYPE_1__ git_worktree ;
struct TYPE_7__ {int repo; } ;


 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 TYPE_5__ fixture ;
 int git__free (char*) ;
 int git_worktree_free (TYPE_1__*) ;
 int git_worktree_lookup (TYPE_1__**,int ,char*) ;
 int git_worktree_validate (TYPE_1__*) ;

void test_worktree_worktree__validate_invalid_gitdir(void)
{
 git_worktree *wt;

 cl_git_pass(git_worktree_lookup(&wt, fixture.repo, "testrepo-worktree"));
 git__free(wt->gitdir_path);
 wt->gitdir_path = "/path/to/invalid/gitdir";
 cl_git_fail(git_worktree_validate(wt));

 wt->gitdir_path = ((void*)0);
 git_worktree_free(wt);
}
