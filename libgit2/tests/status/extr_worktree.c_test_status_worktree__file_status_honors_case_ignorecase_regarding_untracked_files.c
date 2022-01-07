
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_index ;


 int GIT_ENOTFOUND ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int * cl_git_sandbox_reopen () ;
 int cl_repo_set_bool (int *,char*,int) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_repository_index (int **,int *) ;
 int git_status_file (unsigned int*,int *,char*) ;

void test_status_worktree__file_status_honors_case_ignorecase_regarding_untracked_files(void)
{
    git_repository *repo = cl_git_sandbox_init("status");
    unsigned int status;
    git_index *index;

    cl_repo_set_bool(repo, "core.ignorecase", 0);

 repo = cl_git_sandbox_reopen();


    cl_git_fail_with(git_status_file(&status, repo, "NEW_FILE"), GIT_ENOTFOUND);

    cl_git_pass(git_repository_index(&index, repo));

    cl_git_pass(git_index_add_bypath(index, "new_file"));
    cl_git_pass(git_index_write(index));
    git_index_free(index);


    cl_git_fail_with(git_status_file(&status, repo, "NEW_FILE"), GIT_ENOTFOUND);
}
