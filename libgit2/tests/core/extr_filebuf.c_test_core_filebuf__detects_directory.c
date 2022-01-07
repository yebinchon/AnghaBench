
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filebuf ;


 int GIT_EDIRECTORY ;
 int GIT_FILEBUF_INIT ;
 int cl_git_fail_with (int ,int ) ;
 int cl_must_pass (int ) ;
 int git_filebuf_open (int *,char*,int ,int) ;
 int p_mkdir (char*,int) ;
 int p_rmdir (char*) ;

void test_core_filebuf__detects_directory(void)
{
 git_filebuf file = GIT_FILEBUF_INIT;

 cl_must_pass(p_mkdir("foo", 0777));
 cl_git_fail_with(GIT_EDIRECTORY, git_filebuf_open(&file, "foo", 0, 0666));
 cl_must_pass(p_rmdir("foo"));
}
