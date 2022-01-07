
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_assert (int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int cl_skip () ;
 int clar_sandbox_path () ;
 int git_futils_mkdir_r (char*,int) ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 int git_path_exists (char*) ;
 int git_path_supports_symlinks (int ) ;
 int p_rmdir (char*) ;
 int p_symlink (char*,char*) ;
 int p_unlink (char*) ;

void test_core_futils__recursive_rmdir_keeps_symlink_targets(void)
{
 if (!git_path_supports_symlinks(clar_sandbox_path()))
  cl_skip();

 cl_git_pass(git_futils_mkdir_r("a/b", 0777));
 cl_git_pass(git_futils_mkdir_r("dir-target", 0777));
 cl_git_mkfile("dir-target/file", "Contents");
 cl_git_mkfile("file-target", "Contents");
 cl_must_pass(p_symlink("dir-target", "a/symlink"));
 cl_must_pass(p_symlink("file-target", "a/b/symlink"));

 cl_git_pass(git_futils_rmdir_r("a", ((void*)0), GIT_RMDIR_REMOVE_FILES));

 cl_assert(git_path_exists("dir-target"));
 cl_assert(git_path_exists("file-target"));

 cl_must_pass(p_unlink("dir-target/file"));
 cl_must_pass(p_rmdir("dir-target"));
 cl_must_pass(p_unlink("file-target"));
}
