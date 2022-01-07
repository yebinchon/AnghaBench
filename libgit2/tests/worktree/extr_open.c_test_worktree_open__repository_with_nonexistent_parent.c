
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 char* WORKTREE_REPO ;
 int cl_fixture_cleanup (char*) ;
 int cl_fixture_sandbox (char*) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_rename (char*,char*) ;
 int cleanup_fixture_worktree (int *) ;
 int fixture ;
 int git_repository_open (int **,char*) ;
 int p_chdir (char*) ;

void test_worktree_open__repository_with_nonexistent_parent(void)
{
 git_repository *repo;

 cleanup_fixture_worktree(&fixture);

 cl_fixture_sandbox(WORKTREE_REPO);
 cl_git_pass(p_chdir(WORKTREE_REPO));
 cl_git_pass(cl_rename(".gitted", ".git"));
 cl_git_pass(p_chdir(".."));

 cl_git_fail(git_repository_open(&repo, WORKTREE_REPO));

 cl_fixture_cleanup(WORKTREE_REPO);
}
