
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_RMDIR_REMOVE_FILES ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char const*) ;
 int git_futils_rmdir_r (int ,int *,int ) ;
 int git_repository_workdir (int ) ;

__attribute__((used)) static void rm_submodule(const char *name)
{
 git_buf path = GIT_BUF_INIT;
 cl_git_pass(git_buf_joinpath(&path, git_repository_workdir(g_repo), name));
 cl_git_pass(git_futils_rmdir_r(path.ptr, ((void*)0), GIT_RMDIR_REMOVE_FILES));
 git_buf_dispose(&path);
}
