
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filebuf ;


 int GIT_FILEBUF_INIT ;
 int cl_assert (int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_skip () ;
 int git_filebuf_cleanup (int *) ;
 int git_filebuf_commit (int *) ;
 int git_filebuf_open (int *,char*,int ,int) ;
 int git_filebuf_printf (int *,char*,char*) ;
 int git_win32__hidden (int*,char*) ;
 int git_win32__set_hidden (char*,int) ;
 int p_mkdir (char*,int) ;

void test_core_filebuf__hidden_file(void)
{

 cl_skip();
}
