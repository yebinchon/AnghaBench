
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_REPOSITORY_OPEN_NO_SEARCH ;
 int git_repository_open_ext (int **,char const*,int ,int *) ;

int git_repository_open(git_repository **repo_out, const char *path)
{
 return git_repository_open_ext(
  repo_out, path, GIT_REPOSITORY_OPEN_NO_SEARCH, ((void*)0));
}
