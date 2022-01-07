
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_git_append2file (int ,char const*) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char const*) ;
 int git_repository_workdir (int *) ;
 int p_rename (int ,int ) ;

__attribute__((used)) static void _rename_helper(
 git_repository *repo, const char *from, const char *to, const char *extra)
{
 git_buf oldpath = GIT_BUF_INIT, newpath = GIT_BUF_INIT;

 cl_git_pass(git_buf_joinpath(
  &oldpath, git_repository_workdir(repo), from));
 cl_git_pass(git_buf_joinpath(
  &newpath, git_repository_workdir(repo), to));

 cl_git_pass(p_rename(oldpath.ptr, newpath.ptr));

 if (extra)
  cl_git_append2file(newpath.ptr, extra);

 git_buf_dispose(&oldpath);
 git_buf_dispose(&newpath);
}
