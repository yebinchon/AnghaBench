
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_filebuf ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_FILEBUF_INIT ;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_skip () ;
 int clar_sandbox_path () ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_filebuf_cleanup (int *) ;
 int git_filebuf_commit (int *) ;
 int git_filebuf_open (int *,int ,int ,int) ;
 int git_filebuf_printf (int *,char*,char*) ;
 int git_futils_rmdir_r (char*,int *,int ) ;
 int git_path_exists (char*) ;
 int git_path_supports_symlinks (int ) ;
 int p_mkdir (char*,int) ;
 int p_symlink (int ,int ) ;

void test_core_filebuf__symlink_follow_absolute_paths(void)
{
 git_filebuf file = GIT_FILEBUF_INIT;
 git_buf source = GIT_BUF_INIT, target = GIT_BUF_INIT;

 if (!git_path_supports_symlinks(clar_sandbox_path()))
  cl_skip();

 cl_git_pass(git_buf_joinpath(&source, clar_sandbox_path(), "linkdir/link"));
 cl_git_pass(git_buf_joinpath(&target, clar_sandbox_path(), "linkdir/target"));
 cl_git_pass(p_mkdir("linkdir", 0777));
 cl_git_pass(p_symlink(target.ptr, source.ptr));

 cl_git_pass(git_filebuf_open(&file, source.ptr, 0, 0666));
 cl_git_pass(git_filebuf_printf(&file, "%s\n", "libgit2 rocks"));

 cl_assert_equal_i(1, git_path_exists("linkdir/target.lock"));

 cl_git_pass(git_filebuf_commit(&file));
 cl_assert_equal_i(1, git_path_exists("linkdir/target"));

 git_filebuf_cleanup(&file);
 git_buf_dispose(&source);
 git_buf_dispose(&target);

 cl_git_pass(git_futils_rmdir_r("linkdir", ((void*)0), GIT_RMDIR_REMOVE_FILES));
}
