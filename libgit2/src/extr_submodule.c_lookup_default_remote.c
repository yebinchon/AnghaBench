
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_remote ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_SUBMODULE ;
 int git_error_set (int ,char*) ;
 int git_remote_lookup (int **,int *,char*) ;
 int lookup_head_remote (int **,int *) ;

__attribute__((used)) static int lookup_default_remote(git_remote **remote, git_repository *repo)
{
 int error = lookup_head_remote(remote, repo);


 if (error == GIT_ENOTFOUND)
  error = git_remote_lookup(remote, repo, "origin");

 if (error == GIT_ENOTFOUND)
  git_error_set(
   GIT_ERROR_SUBMODULE,
   "cannot get default remote for submodule - no local tracking "
   "branch for HEAD and origin does not exist");

 return error;
}
