
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filebuf ;


 int GIT_FILEBUF_INIT ;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_skip () ;
 int clar_sandbox_path () ;
 int git_filebuf_open (int *,char const*,int ,int) ;
 int git_futils_rmdir_r (char const*,int *,int ) ;
 int git_path_supports_symlinks (int ) ;
 int p_mkdir (char const*,int) ;
 int p_symlink (char*,char const*) ;

void test_core_filebuf__symlink_depth(void)
{
 git_filebuf file = GIT_FILEBUF_INIT;
 const char *dir = "linkdir", *source = "linkdir/link";

 if (!git_path_supports_symlinks(clar_sandbox_path()))
  cl_skip();

 cl_git_pass(p_mkdir(dir, 0777));

 cl_git_pass(p_symlink("link", source));

 cl_git_fail(git_filebuf_open(&file, source, 0, 0666));

 cl_git_pass(git_futils_rmdir_r(dir, ((void*)0), GIT_RMDIR_REMOVE_FILES));
}
