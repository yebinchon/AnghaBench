
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_MKDIR_PATH ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_futils_mkdir (char*,int,int ) ;

void test_core_stat__initialize(void)
{
 cl_git_pass(git_futils_mkdir("root/d1/d2", 0755, GIT_MKDIR_PATH));
 cl_git_mkfile("root/file", "whatever\n");
 cl_git_mkfile("root/d1/file", "whatever\n");
}
