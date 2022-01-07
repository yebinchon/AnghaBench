
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_remote ;


 int GIT_UNUSED (void*) ;
 int git_remote_create_with_fetchspec (int **,int *,char const*,char const*,char*) ;

__attribute__((used)) static int remote_mirror_cb(git_remote **out, git_repository *repo,
       const char *name, const char *url, void *payload)
{
 int error;
 git_remote *remote;

 GIT_UNUSED(payload);

 if ((error = git_remote_create_with_fetchspec(&remote, repo, name, url, "+refs/*:refs/*")) < 0)
  return error;

 *out = remote;
 return 0;
}
