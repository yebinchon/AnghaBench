
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 scalar_t__ GIT_EOL_CRLF ;
 scalar_t__ GIT_EOL_NATIVE ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_buf_dispose (int *) ;
 int git_buf_puts (int *,char*) ;
 int git_path_direach (int *,int ,int ,int *) ;
 char* systype ;
 int unlink_file ;

void test_checkout_crlf__initialize(void)
{
 git_buf reponame = GIT_BUF_INIT;

 g_repo = cl_git_sandbox_init("crlf");





 cl_git_pass(git_buf_puts(&reponame, "crlf"));
 cl_git_pass(git_path_direach(&reponame, 0, unlink_file, ((void*)0)));

 if (GIT_EOL_NATIVE == GIT_EOL_CRLF)
  systype = "windows";
 else
  systype = "posix";

 git_buf_dispose(&reponame);
}
