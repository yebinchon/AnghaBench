
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filebuf ;


 int GIT_FILEBUF_INIT ;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_skip () ;
 int clar_sandbox_path () ;
 int git_filebuf_cleanup (int *) ;
 int git_filebuf_commit (int *) ;
 int git_filebuf_open (int *,char const*,int ,int) ;
 int git_filebuf_printf (int *,char*,char*) ;
 int git_futils_rmdir_r (char const*,int *,int ) ;
 int git_path_exists (char*) ;
 int git_path_supports_symlinks (int ) ;
 int p_mkdir (char const*,int) ;
 int p_symlink (char*,char const*) ;

void test_core_filebuf__symlink_follow(void)
{
 git_filebuf file = GIT_FILEBUF_INIT;
 const char *dir = "linkdir", *source = "linkdir/link";

 if (!git_path_supports_symlinks(clar_sandbox_path()))
  cl_skip();

 cl_git_pass(p_mkdir(dir, 0777));
 cl_git_pass(p_symlink("target", source));

 cl_git_pass(git_filebuf_open(&file, source, 0, 0666));
 cl_git_pass(git_filebuf_printf(&file, "%s\n", "libgit2 rocks"));

 cl_assert_equal_i(1, git_path_exists("linkdir/target.lock"));

 cl_git_pass(git_filebuf_commit(&file));
 cl_assert_equal_i(1, git_path_exists("linkdir/target"));

 git_filebuf_cleanup(&file);


 cl_git_pass(git_filebuf_open(&file, source, 0, 0666));
 cl_git_pass(git_filebuf_printf(&file, "%s\n", "libgit2 rocks"));

 cl_assert_equal_i(1, git_path_exists("linkdir/target.lock"));

 cl_git_pass(git_filebuf_commit(&file));
 cl_assert_equal_i(1, git_path_exists("linkdir/target"));

 git_filebuf_cleanup(&file);
 cl_git_pass(git_futils_rmdir_r(dir, ((void*)0), GIT_RMDIR_REMOVE_FILES));
}
