
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;


 int GIT_EUNBORNBRANCH ;
 int create_error (int,char*) ;
 int git_repository_head (int **,int *) ;

__attribute__((used)) static int retrieve_head(git_reference **out, git_repository *repo)
{
 int error = git_repository_head(out, repo);

 if (error == GIT_EUNBORNBRANCH)
  return create_error(error, "you do not have the initial commit yet.");

 return error;
}
