
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_remote ;


 int GIT_EEXISTS ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_CONFIG ;
 int git_error_set (int ,char*,char const*) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int *,char const*) ;

__attribute__((used)) static int ensure_remote_doesnot_exist(git_repository *repo, const char *name)
{
 int error;
 git_remote *remote;

 error = git_remote_lookup(&remote, repo, name);

 if (error == GIT_ENOTFOUND)
  return 0;

 if (error < 0)
  return error;

 git_remote_free(remote);

 git_error_set(GIT_ERROR_CONFIG, "remote '%s' already exists", name);

 return GIT_EEXISTS;
}
