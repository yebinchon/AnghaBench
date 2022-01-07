
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int clar__skip () ;
 int clar_sandbox_path () ;
 int git_futils_mkdir (char*,int,int ) ;
 int git_path_exists (char*) ;
 int git_path_supports_symlinks (int ) ;
 int p_rmdir (char*) ;
 int p_symlink (char*,char*) ;
 int p_unlink (char*) ;

void test_core_posix__unlink_removes_symlink(void)
{
 if (!git_path_supports_symlinks(clar_sandbox_path()))
  clar__skip();

 cl_git_mkfile("file", "Dummy file.");
 cl_git_pass(git_futils_mkdir("dir", 0777, 0));

 cl_must_pass(p_symlink("file", "file-symlink"));
 cl_must_pass(p_symlink("dir", "dir-symlink"));

 cl_must_pass(p_unlink("file-symlink"));
 cl_must_pass(p_unlink("dir-symlink"));

 cl_assert(git_path_exists("file"));
 cl_assert(git_path_exists("dir"));

 cl_must_pass(p_unlink("file"));
 cl_must_pass(p_rmdir("dir"));
}
