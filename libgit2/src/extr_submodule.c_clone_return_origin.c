
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_remote ;


 int GIT_UNUSED (void*) ;
 int git_remote_lookup (int **,int *,char const*) ;

__attribute__((used)) static int clone_return_origin(git_remote **out, git_repository *repo, const char *name, const char *url, void *payload)
{
 GIT_UNUSED(url);
 GIT_UNUSED(payload);
 return git_remote_lookup(out, repo, name);
}
