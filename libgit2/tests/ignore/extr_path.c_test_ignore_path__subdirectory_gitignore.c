
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (int,char*) ;
 int cl_assert (int) ;
 int cl_git_mkfile (char*,char*) ;
 int git_path_exists (char*) ;
 int p_mkdir (char*,int) ;
 int p_unlink (char*) ;

void test_ignore_path__subdirectory_gitignore(void)
{
 p_unlink("attr/.gitignore");
 cl_assert(!git_path_exists("attr/.gitignore"));
 cl_git_mkfile(
  "attr/.gitignore",
  "file1\n");
 p_mkdir("attr/dir", 0777);
 cl_git_mkfile(
  "attr/dir/.gitignore",
  "file2/\n");

 assert_is_ignored(1, "file1");
 assert_is_ignored(1, "dir/file1");
 assert_is_ignored(1, "dir/file2/actual_file");
 assert_is_ignored(0, "dir/file3");
}
