
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_RDWR ;
 int cl_assert_equal_s (char*,char*) ;
 int cl_git_write2file (char*,char*,int,int,int) ;
 int cl_must_pass (int ) ;
 int cl_sandbox_supports_8dot3 () ;
 int clar__skip () ;
 int git__free (char*) ;
 char* git_win32_path_8dot3_name (char*) ;
 int p_mkdir (char*,int) ;

void test_path_win32__8dot3_name(void)
{
}
