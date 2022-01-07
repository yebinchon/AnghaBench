
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_mailmap ;


 int git_mailmap_new (int **) ;
 int mailmap_add_from_repository (int *,int *) ;

int git_mailmap_from_repository(git_mailmap **out, git_repository *repo)
{
 int error = git_mailmap_new(out);
 if (error < 0)
  return error;
 mailmap_add_from_repository(*out, repo);
 return 0;
}
