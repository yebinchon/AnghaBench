
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int git_repository ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_CONFIGMAP_SYMLINKS ;
 int S_ISLNK (int ) ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int ensure_workdir_contents (char const*,char const*) ;
 int g_repo ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,int ,char const*) ;
 int git_repository__configmap_lookup (int*,int *,int ) ;
 int git_repository_workdir (int ) ;
 int p_lstat (int ,struct stat*) ;
 int p_readlink (int ,char*,int) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static void ensure_workdir_link(
 git_repository *repo,
 const char *path,
 const char *target)
{
 int symlinks;

 cl_git_pass(git_repository__configmap_lookup(&symlinks, repo, GIT_CONFIGMAP_SYMLINKS));

 if (!symlinks) {
  ensure_workdir_contents(path, target);
 } else {
  git_buf fullpath = GIT_BUF_INIT;
  char actual[1024];
  struct stat st;
  int len;

  cl_git_pass(
   git_buf_joinpath(&fullpath, git_repository_workdir(g_repo), path));

  cl_git_pass(p_lstat(git_buf_cstr(&fullpath), &st));
  cl_assert(S_ISLNK(st.st_mode));

  cl_assert((len = p_readlink(git_buf_cstr(&fullpath), actual, 1024)) > 0);
  actual[len] = '\0';
  cl_assert(strcmp(actual, target) == 0);

  git_buf_dispose(&fullpath);
 }
}
