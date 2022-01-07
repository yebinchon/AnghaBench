
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_len (int *) ;
 int git_buf_puts (int *,char const*) ;
 int git_buf_quote (int *) ;
 int strlen (char const*) ;

__attribute__((used)) static void expect_quote_pass(const char *expected, const char *str)
{
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git_buf_puts(&buf, str));
 cl_git_pass(git_buf_quote(&buf));

 cl_assert_equal_s(expected, git_buf_cstr(&buf));
 cl_assert_equal_i(strlen(expected), git_buf_len(&buf));

 git_buf_dispose(&buf);
}
