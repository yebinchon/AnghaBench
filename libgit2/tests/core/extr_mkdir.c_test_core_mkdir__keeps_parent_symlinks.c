
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_MKDIR_PATH ;
 int GIT_MKDIR_REMOVE_SYMLINKS ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int cl_set_cleanup (int ,int *) ;
 int clar_sandbox_path () ;
 int cleanup_basic_dirs ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_futils_mkdir (char*,int,int) ;
 int git_path_isdir (char*) ;
 int git_path_islink (char*) ;
 int symlink (char*,char*) ;

void test_core_mkdir__keeps_parent_symlinks(void)
{

 git_buf path = GIT_BUF_INIT;

 cl_set_cleanup(cleanup_basic_dirs, ((void*)0));


 cl_assert(!git_path_isdir("d0"));
 cl_git_pass(git_futils_mkdir("d0", 0755, 0));
 cl_assert(git_path_isdir("d0"));

 cl_must_pass(symlink("d0", "d1"));
 cl_assert(git_path_islink("d1"));

 cl_git_pass(git_futils_mkdir("d1/foo/bar", 0755, GIT_MKDIR_PATH|GIT_MKDIR_REMOVE_SYMLINKS));
 cl_assert(git_path_islink("d1"));
 cl_assert(git_path_isdir("d1/foo/bar"));
 cl_assert(git_path_isdir("d0/foo/bar"));

 cl_must_pass(symlink("d0", "d2"));
 cl_assert(git_path_islink("d2"));

 git_buf_joinpath(&path, clar_sandbox_path(), "d2/other/dir");

 cl_git_pass(git_futils_mkdir(path.ptr, 0755, GIT_MKDIR_PATH|GIT_MKDIR_REMOVE_SYMLINKS));
 cl_assert(git_path_islink("d2"));
 cl_assert(git_path_isdir("d2/other/dir"));
 cl_assert(git_path_isdir("d0/other/dir"));

 git_buf_dispose(&path);

}
