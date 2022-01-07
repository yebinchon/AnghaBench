
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; int st_mode; } ;


 int S_ISREG (int ) ;
 int cl_assert (int) ;
 int cl_git_mkfile (char*,char const*) ;
 int cl_git_pass (int ) ;
 int git_futils_cp (char*,char*,int) ;
 int git_path_lstat (char*,struct stat*) ;
 int p_unlink (char*) ;
 size_t strlen (char const*) ;

void test_core_copy__file(void)
{
 struct stat st;
 const char *content = "This is some stuff to copy\n";

 cl_git_mkfile("copy_me", content);

 cl_git_pass(git_futils_cp("copy_me", "copy_me_two", 0664));

 cl_git_pass(git_path_lstat("copy_me_two", &st));
 cl_assert(S_ISREG(st.st_mode));
 cl_assert(strlen(content) == (size_t)st.st_size);

 cl_git_pass(p_unlink("copy_me_two"));
 cl_git_pass(p_unlink("copy_me"));
}
