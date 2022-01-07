
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_index ;


 int GIT_STATUS_WT_DELETED ;
 int cl_assert_equal_i (int ,unsigned int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int fill_index_wth_head_entries (int *,int *) ;
 int git_index_free (int *) ;
 int git_index_open (int **,char*) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;
 int git_repository_set_index (int *,int *) ;
 int git_repository_set_workdir (int *,char*,int) ;
 int git_status_file (unsigned int*,int *,char*) ;
 int p_mkdir (char*,int) ;
 int p_rmdir (char*) ;
 int p_unlink (char*) ;

void test_status_worktree_init__status_file_with_clean_index_and_empty_workdir(void)
{
 git_repository *repo;
 unsigned int status = 0;
 git_index *index;

 cl_git_pass(p_mkdir("wd", 0777));

 cl_git_pass(git_repository_open(&repo, cl_fixture("testrepo.git")));
 cl_git_pass(git_repository_set_workdir(repo, "wd", 0));

 cl_git_pass(git_index_open(&index, "my-index"));
 fill_index_wth_head_entries(repo, index);

 git_repository_set_index(repo, index);

 cl_git_pass(git_status_file(&status, repo, "branch_file.txt"));

 cl_assert_equal_i(GIT_STATUS_WT_DELETED, status);

 git_repository_free(repo);
 git_index_free(index);
 cl_git_pass(p_rmdir("wd"));
 cl_git_pass(p_unlink("my-index"));
}
