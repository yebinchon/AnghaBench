
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_index ;


 int GIT_STATUS_INDEX_NEW ;
 int cl_assert_equal_i (int ,unsigned int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_repo_set_bool (int *,char*,int) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_new_repo ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_repository_init (int **,char*,int ) ;
 int git_status_file (unsigned int*,int *,char*) ;

void test_status_worktree_init__new_staged_file_must_handle_crlf(void)
{
 git_repository *repo;
 git_index *index;
 unsigned int status;

 cl_set_cleanup(&cleanup_new_repo, "getting_started");
 cl_git_pass(git_repository_init(&repo, "getting_started", 0));


 cl_repo_set_bool(repo, "core.autocrlf", 1);

 cl_git_mkfile("getting_started/testfile.txt", "content\r\n");

 cl_git_pass(git_repository_index(&index, repo));
 cl_git_pass(git_index_add_bypath(index, "testfile.txt"));
 cl_git_pass(git_index_write(index));

 cl_git_pass(git_status_file(&status, repo, "testfile.txt"));
 cl_assert_equal_i(GIT_STATUS_INDEX_NEW, status);

 git_index_free(index);
 git_repository_free(repo);
}
