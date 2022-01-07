
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

void test_ignore_path__gitignore_in_subdir(void)
{
 cl_git_rmfile("attr/.gitignore");

 cl_must_pass(p_mkdir("attr/dir1", 0777));
 cl_must_pass(p_mkdir("attr/dir1/dir2", 0777));
 cl_must_pass(p_mkdir("attr/dir1/dir2/dir3", 0777));

 cl_git_mkfile("attr/dir1/dir2/dir3/.gitignore", "dir1/\ndir1/subdir/");

 assert_is_ignored(0, "dir1/file");
 assert_is_ignored(0, "dir1/dir2/file");
 assert_is_ignored(0, "dir1/dir2/dir3/file");
 assert_is_ignored(1, "dir1/dir2/dir3/dir1/file");
 assert_is_ignored(1, "dir1/dir2/dir3/dir1/subdir/foo");

 if (cl_repo_get_bool(g_repo, "core.ignorecase")) {
  cl_git_mkfile("attr/dir1/dir2/dir3/.gitignore", "DiR1/\nDiR1/subdir/\n");

  assert_is_ignored(0, "dir1/file");
  assert_is_ignored(0, "dir1/dir2/file");
  assert_is_ignored(0, "dir1/dir2/dir3/file");
  assert_is_ignored(1, "dir1/dir2/dir3/dir1/file");
  assert_is_ignored(1, "dir1/dir2/dir3/dir1/subdir/foo");
 }
}
