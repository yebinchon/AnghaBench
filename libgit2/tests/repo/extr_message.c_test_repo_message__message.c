
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int _repo ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_mkfile (int ,char const*) ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char*) ;
 int git_repository_message (int *,int ) ;
 int git_repository_path (int ) ;
 int p_unlink (int ) ;

void test_repo_message__message(void)
{
 git_buf path = GIT_BUF_INIT, actual = GIT_BUF_INIT;
 const char expected[] = "Test\n\nThis is a test of the emergency broadcast system\n";

 cl_git_pass(git_buf_joinpath(&path, git_repository_path(_repo), "MERGE_MSG"));
 cl_git_mkfile(git_buf_cstr(&path), expected);

 cl_git_pass(git_repository_message(&actual, _repo));
 cl_assert_equal_s(expected, git_buf_cstr(&actual));
 git_buf_dispose(&actual);

 cl_git_pass(p_unlink(git_buf_cstr(&path)));
 cl_assert_equal_i(GIT_ENOTFOUND, git_repository_message(&actual, _repo));
 git_buf_dispose(&path);
}
