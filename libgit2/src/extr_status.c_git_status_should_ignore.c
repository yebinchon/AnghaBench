
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int git_ignore_path_is_ignored (int*,int *,char const*) ;

int git_status_should_ignore(
 int *ignored,
 git_repository *repo,
 const char *path)
{
 return git_ignore_path_is_ignored(ignored, repo, path);
}
