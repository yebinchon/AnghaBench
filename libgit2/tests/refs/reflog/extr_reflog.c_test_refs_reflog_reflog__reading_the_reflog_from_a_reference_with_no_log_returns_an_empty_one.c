
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reflog ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_REFLOG_DIR ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_join_n (int *,char,int,int ,int ,char const*) ;
 int git_path_isfile (int ) ;
 scalar_t__ git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int ,char const*) ;
 int git_repository_path (int ) ;

void test_refs_reflog_reflog__reading_the_reflog_from_a_reference_with_no_log_returns_an_empty_one(void)
{
 git_reflog *reflog;
 const char *refname = "refs/heads/subtrees";
 git_buf subtrees_log_path = GIT_BUF_INIT;

 git_buf_join_n(&subtrees_log_path, '/', 3, git_repository_path(g_repo), GIT_REFLOG_DIR, refname);
 cl_assert_equal_i(0, git_path_isfile(git_buf_cstr(&subtrees_log_path)));

 cl_git_pass(git_reflog_read(&reflog, g_repo, refname));

 cl_assert_equal_i(0, (int)git_reflog_entrycount(reflog));

 git_reflog_free(reflog);
 git_buf_dispose(&subtrees_log_path);
}
