
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; int st_mode; } ;


 int GIT_MKDIR_PATH ;
 int GIT_RMDIR_REMOVE_FILES ;
 int S_ISREG (int ) ;
 int cl_assert (int) ;
 int cl_git_mkfile (char*,char const*) ;
 int cl_git_pass (int ) ;
 int git_futils_cp (char*,char*,int) ;
 int git_futils_mkdir (char*,int,int ) ;
 int git_futils_mkpath2file (char*,int) ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 int git_path_isdir (char*) ;
 int git_path_lstat (char*,struct stat*) ;
 size_t strlen (char const*) ;

void test_core_copy__file_in_dir(void)
{
 struct stat st;
 const char *content = "This is some other stuff to copy\n";

 cl_git_pass(git_futils_mkdir("an_dir/in_a_dir", 0775, GIT_MKDIR_PATH));
 cl_git_mkfile("an_dir/in_a_dir/copy_me", content);
 cl_assert(git_path_isdir("an_dir"));

 cl_git_pass(git_futils_mkpath2file
  ("an_dir/second_dir/and_more/copy_me_two", 0775));

 cl_git_pass(git_futils_cp
  ("an_dir/in_a_dir/copy_me",
   "an_dir/second_dir/and_more/copy_me_two",
   0664));

 cl_git_pass(git_path_lstat("an_dir/second_dir/and_more/copy_me_two", &st));
 cl_assert(S_ISREG(st.st_mode));
 cl_assert(strlen(content) == (size_t)st.st_size);

 cl_git_pass(git_futils_rmdir_r("an_dir", ((void*)0), GIT_RMDIR_REMOVE_FILES));
 cl_assert(!git_path_isdir("an_dir"));
}
