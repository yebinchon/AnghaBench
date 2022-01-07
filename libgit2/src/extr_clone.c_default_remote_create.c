
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_remote ;


 int GIT_UNUSED (void*) ;
 int git_remote_create (int **,int *,char const*,char const*) ;

__attribute__((used)) static int default_remote_create(
  git_remote **out,
  git_repository *repo,
  const char *name,
  const char *url,
  void *payload)
{
 GIT_UNUSED(payload);

 return git_remote_create(out, repo, name, url);
}
