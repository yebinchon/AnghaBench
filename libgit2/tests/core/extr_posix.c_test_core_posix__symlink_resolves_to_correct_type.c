
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int clar__skip () ;
 int clar_sandbox_path () ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_futils_mkdir (char*,int,int ) ;
 int git_futils_readbuffer (TYPE_1__*,char*) ;
 int git_path_supports_symlinks (int ) ;
 int p_rmdir (char*) ;
 int p_symlink (char*,char*) ;
 int p_unlink (char*) ;

void test_core_posix__symlink_resolves_to_correct_type(void)
{
 git_buf contents = GIT_BUF_INIT;

 if (!git_path_supports_symlinks(clar_sandbox_path()))
  clar__skip();

 cl_must_pass(git_futils_mkdir("dir", 0777, 0));
 cl_must_pass(git_futils_mkdir("file", 0777, 0));
 cl_git_mkfile("dir/file", "symlink target");

 cl_git_pass(p_symlink("file", "dir/link"));

 cl_git_pass(git_futils_readbuffer(&contents, "dir/file"));
 cl_assert_equal_s(contents.ptr, "symlink target");

 cl_must_pass(p_unlink("dir/link"));
 cl_must_pass(p_unlink("dir/file"));
 cl_must_pass(p_rmdir("dir"));
 cl_must_pass(p_rmdir("file"));

 git_buf_dispose(&contents);
}
