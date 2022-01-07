
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filebuf ;


 int GIT_FILEBUF_APPEND ;
 int GIT_FILEBUF_INIT ;
 int cl_assert_equal_file (char*,int ,char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int git_filebuf_commit (int *) ;
 int git_filebuf_open (int *,char*,int ,int) ;
 int git_filebuf_printf (int *,char*,char*) ;
 int p_unlink (char*) ;

void test_core_filebuf__1(void)
{
 git_filebuf file = GIT_FILEBUF_INIT;
 char test[] = "test";

 cl_git_mkfile(test, "libgit2 rocks\n");

 cl_git_pass(git_filebuf_open(&file, test, GIT_FILEBUF_APPEND, 0666));
 cl_git_pass(git_filebuf_printf(&file, "%s\n", "libgit2 rocks"));
 cl_git_pass(git_filebuf_commit(&file));

 cl_assert_equal_file("libgit2 rocks\nlibgit2 rocks\n", 0, test);

 cl_must_pass(p_unlink(test));
}
