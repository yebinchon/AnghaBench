
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_remote ;


 int GIT_UNUSED (void*) ;
 int git_remote_create (int **,int *,char*,char const*) ;

int custom_origin_name_remote_create(
 git_remote **out,
 git_repository *repo,
 const char *name,
 const char *url,
 void *payload)
{
 GIT_UNUSED(name);
 GIT_UNUSED(payload);

 return git_remote_create(out, repo, "my_origin", url);
}
