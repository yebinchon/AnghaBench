
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (int,char*) ;
 int cl_assert (int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_rewritefile (char*,char*) ;
 int git_path_exists (char*) ;
 int p_mkdir (char*,int) ;
 int p_unlink (char*) ;

void test_ignore_path__skip_gitignore_directory(void)
{
 cl_git_rewritefile("attr/.git/info/exclude", "/NewFolder\n/NewFolder/NewFolder");
 p_unlink("attr/.gitignore");
 cl_assert(!git_path_exists("attr/.gitignore"));
 p_mkdir("attr/.gitignore", 0777);
 cl_git_mkfile("attr/.gitignore/garbage.txt", "new_file\n");

 assert_is_ignored(0, "File.txt");
 assert_is_ignored(1, "NewFolder");
 assert_is_ignored(1, "NewFolder/NewFolder");
 assert_is_ignored(1, "NewFolder/NewFolder/File.txt");
}
