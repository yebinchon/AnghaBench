
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int empty_tmp_dir ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int p_mkdir (int ,int) ;

void test_core_rmdir__initialize(void)
{
 git_buf path = GIT_BUF_INIT;

 cl_must_pass(p_mkdir(empty_tmp_dir, 0777));

 cl_git_pass(git_buf_joinpath(&path, empty_tmp_dir, "/one"));
 cl_must_pass(p_mkdir(path.ptr, 0777));

 cl_git_pass(git_buf_joinpath(&path, empty_tmp_dir, "/one/two_one"));
 cl_must_pass(p_mkdir(path.ptr, 0777));

 cl_git_pass(git_buf_joinpath(&path, empty_tmp_dir, "/one/two_two"));
 cl_must_pass(p_mkdir(path.ptr, 0777));

 cl_git_pass(git_buf_joinpath(&path, empty_tmp_dir, "/one/two_two/three"));
 cl_must_pass(p_mkdir(path.ptr, 0777));

 cl_git_pass(git_buf_joinpath(&path, empty_tmp_dir, "/two"));
 cl_must_pass(p_mkdir(path.ptr, 0777));

 git_buf_dispose(&path);
}
