
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int assert_sm_valid (int ,int ,char*) ;
 int cl_git_pass (int ) ;
 int g_child ;
 int g_parent ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_repository_open (int *,int ) ;
 int git_repository_workdir (int ) ;

void test_submodule_open__direct_open_succeeds(void)
{
 git_buf path = GIT_BUF_INIT;

 cl_git_pass(git_buf_joinpath(&path, git_repository_workdir(g_parent), "sm_unchanged"));
 cl_git_pass(git_repository_open(&g_child, path.ptr));
 assert_sm_valid(g_parent, g_child, "sm_unchanged");

 git_buf_dispose(&path);
}
