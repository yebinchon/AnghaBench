
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (int,char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_rmfile (char*) ;
 int cl_must_pass (int ) ;
 scalar_t__ cl_repo_get_bool (int ,char*) ;
 int g_repo ;
 int p_mkdir (char*,int) ;
 int p_rmdir (char*) ;

void test_ignore_path__dont_ignore_files_for_folder(void)
{
 cl_git_rmfile("attr/.gitignore");

 cl_git_mkfile("attr/dir/.gitignore", "test/\n");


 cl_git_mkfile("attr/dir/test", "This is a file.");

 assert_is_ignored(0, "dir/test");
 if (cl_repo_get_bool(g_repo, "core.ignorecase"))
  assert_is_ignored(0, "dir/TeSt");


 cl_git_rmfile("attr/dir/test");
 cl_must_pass(p_mkdir("attr/dir/test", 0777));

 assert_is_ignored(1, "dir/test");
 if (cl_repo_get_bool(g_repo, "core.ignorecase"))
  assert_is_ignored(1, "dir/TeSt");




 cl_must_pass(p_rmdir("attr/dir/test"));

 assert_is_ignored(0, "dir/test");
 if (cl_repo_get_bool(g_repo, "core.ignorecase"))
  assert_is_ignored(0, "dir/TeSt");
}
