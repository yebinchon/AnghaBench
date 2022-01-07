
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (int *) ;
 int git_buf_puts (int *,char const*) ;
 int git_buf_unquote (int *) ;

__attribute__((used)) static void expect_unquote_fail(const char *quoted)
{
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git_buf_puts(&buf, quoted));
 cl_git_fail(git_buf_unquote(&buf));

 git_buf_dispose(&buf);
}
