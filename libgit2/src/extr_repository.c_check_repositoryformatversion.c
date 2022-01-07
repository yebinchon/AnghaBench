
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_REPOSITORY ;
 int GIT_REPO_VERSION ;
 int git_config_get_int32 (int*,int *,char*) ;
 int git_error_set (int ,char*,int,int) ;

__attribute__((used)) static int check_repositoryformatversion(git_config *config)
{
 int version, error;

 error = git_config_get_int32(&version, config, "core.repositoryformatversion");

 if (error == GIT_ENOTFOUND)
  return 0;

 if (error < 0)
  return -1;

 if (GIT_REPO_VERSION < version) {
  git_error_set(GIT_ERROR_REPOSITORY,
   "unsupported repository version %d. Only versions up to %d are supported.",
   version, GIT_REPO_VERSION);
  return -1;
 }

 return 0;
}
