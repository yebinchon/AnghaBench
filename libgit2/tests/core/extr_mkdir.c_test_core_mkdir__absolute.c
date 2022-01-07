
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int ,int *) ;
 int clar_sandbox_path () ;
 int cleanup_basic_dirs ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_futils_mkdir (int ,int,int ) ;
 int git_futils_mkdir_r (int ,int) ;
 int git_path_isdir (int ) ;

void test_core_mkdir__absolute(void)
{
 git_buf path = GIT_BUF_INIT;

 cl_set_cleanup(cleanup_basic_dirs, ((void*)0));

 git_buf_joinpath(&path, clar_sandbox_path(), "d0");


 cl_assert(!git_path_isdir(path.ptr));
 cl_git_pass(git_futils_mkdir(path.ptr, 0755, 0));
 cl_assert(git_path_isdir(path.ptr));

 git_buf_joinpath(&path, path.ptr, "subdir");
 cl_assert(!git_path_isdir(path.ptr));
 cl_git_pass(git_futils_mkdir(path.ptr, 0755, 0));
 cl_assert(git_path_isdir(path.ptr));


 git_buf_joinpath(&path, path.ptr, "another");
 cl_assert(!git_path_isdir(path.ptr));
 cl_git_pass(git_futils_mkdir_r(path.ptr, 0755));
 cl_assert(git_path_isdir(path.ptr));


 git_buf_joinpath(&path, clar_sandbox_path(), "d1/foo/bar/asdf");
 cl_assert(!git_path_isdir(path.ptr));
 cl_git_pass(git_futils_mkdir_r(path.ptr, 0755));
 cl_assert(git_path_isdir(path.ptr));


 git_buf_joinpath(&path, clar_sandbox_path(), "d2/foo/bar/asdf");
 cl_assert(!git_path_isdir(path.ptr));
 cl_git_fail(git_futils_mkdir(path.ptr, 0755, 0));
 cl_assert(!git_path_isdir(path.ptr));

 git_buf_dispose(&path);
}
