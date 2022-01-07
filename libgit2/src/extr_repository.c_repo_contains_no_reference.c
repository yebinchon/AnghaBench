
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_PASSTHROUGH ;
 int at_least_one_cb ;
 int git_reference_foreach_name (int *,int *,int *) ;

__attribute__((used)) static int repo_contains_no_reference(git_repository *repo)
{
 int error = git_reference_foreach_name(repo, &at_least_one_cb, ((void*)0));

 if (error == GIT_PASSTHROUGH)
  return 0;

 if (!error)
  return 1;

 return error;
}
