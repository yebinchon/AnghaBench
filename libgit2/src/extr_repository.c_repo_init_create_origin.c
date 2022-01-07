
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_remote ;


 int GIT_REMOTE_ORIGIN ;
 int git_remote_create (int **,int *,int ,char const*) ;
 int git_remote_free (int *) ;

__attribute__((used)) static int repo_init_create_origin(git_repository *repo, const char *url)
{
 int error;
 git_remote *remote;

 if (!(error = git_remote_create(&remote, repo, GIT_REMOTE_ORIGIN, url))) {
  git_remote_free(remote);
 }

 return error;
}
