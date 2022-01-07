
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char const*) ;
 int git_futils_readbuffer (int *,int ) ;
 int git_repository_workdir (int ) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static void ensure_workdir_contents(const char *path, const char *contents)
{
 git_buf fullpath = GIT_BUF_INIT, data_buf = GIT_BUF_INIT;

 cl_git_pass(
  git_buf_joinpath(&fullpath, git_repository_workdir(g_repo), path));

 cl_git_pass(git_futils_readbuffer(&data_buf, git_buf_cstr(&fullpath)));
 cl_assert(strcmp(git_buf_cstr(&data_buf), contents) == 0);

 git_buf_dispose(&fullpath);
 git_buf_dispose(&data_buf);
}
