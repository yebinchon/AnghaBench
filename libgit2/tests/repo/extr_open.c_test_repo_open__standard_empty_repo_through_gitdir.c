
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cl_assert (int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 scalar_t__ git__suffixcmp (int *,char*) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;
 int * git_repository_path (int *) ;
 int * git_repository_workdir (int *) ;

void test_repo_open__standard_empty_repo_through_gitdir(void)
{
 git_repository *repo;

 cl_git_pass(git_repository_open(&repo, cl_fixture("empty_standard_repo/.gitted")));

 cl_assert(git_repository_path(repo) != ((void*)0));
 cl_assert(git__suffixcmp(git_repository_path(repo), "/") == 0);

 cl_assert(git_repository_workdir(repo) != ((void*)0));
 cl_assert(git__suffixcmp(git_repository_workdir(repo), "/") == 0);

 git_repository_free(repo);
}
