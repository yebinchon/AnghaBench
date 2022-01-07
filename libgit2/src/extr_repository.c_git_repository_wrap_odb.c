
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_odb ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int git_repository_set_odb (int *,int *) ;
 int * repository_alloc () ;

int git_repository_wrap_odb(git_repository **repo_out, git_odb *odb)
{
 git_repository *repo;

 repo = repository_alloc();
 GIT_ERROR_CHECK_ALLOC(repo);

 git_repository_set_odb(repo, odb);
 *repo_out = repo;

 return 0;
}
