
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _path ;
 int cl_git_sandbox_cleanup () ;
 int git_buf_dispose (int *) ;

void test_repo_state__cleanup(void)
{
 cl_git_sandbox_cleanup();
 git_buf_dispose(&_path);
}
