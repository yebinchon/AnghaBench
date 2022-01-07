
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 char* GIT_REFLOG_DIR ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char*) ;
 int git_path_isfile (int ) ;
 int git_reference_delete (int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_repository_path (int ) ;

void test_refs_reflog_reflog__deleting_the_reference_deletes_the_reflog(void)
{
 git_reference *master;
 git_buf master_log_path = GIT_BUF_INIT;

 git_buf_joinpath(&master_log_path, git_repository_path(g_repo), GIT_REFLOG_DIR);
 git_buf_joinpath(&master_log_path, git_buf_cstr(&master_log_path), "refs/heads/master");

 cl_assert_equal_i(1, git_path_isfile(git_buf_cstr(&master_log_path)));

 cl_git_pass(git_reference_lookup(&master, g_repo, "refs/heads/master"));
 cl_git_pass(git_reference_delete(master));
 git_reference_free(master);

 cl_assert_equal_i(0, git_path_isfile(git_buf_cstr(&master_log_path)));
 git_buf_dispose(&master_log_path);
}
