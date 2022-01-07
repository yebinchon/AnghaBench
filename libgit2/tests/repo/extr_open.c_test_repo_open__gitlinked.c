
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cl_assert (int ) ;
 int cl_assert_ (int,int *) ;
 int cl_assert_equal_s (int *,int *) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 scalar_t__ git__suffixcmp (int *,char*) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,char*) ;
 int * git_repository_path (int *) ;
 int * git_repository_workdir (int *) ;
 int make_gitlink_dir (char*,char*) ;

void test_repo_open__gitlinked(void)
{

 git_repository *repo = cl_git_sandbox_init("empty_standard_repo");
 git_repository *repo2;

 make_gitlink_dir("alternate", "gitdir: ../empty_standard_repo/.git");

 cl_git_pass(git_repository_open(&repo2, "alternate"));

 cl_assert(git_repository_path(repo2) != ((void*)0));
 cl_assert_(git__suffixcmp(git_repository_path(repo2), "empty_standard_repo/.git/") == 0, git_repository_path(repo2));
 cl_assert_equal_s(git_repository_path(repo), git_repository_path(repo2));

 cl_assert(git_repository_workdir(repo2) != ((void*)0));
 cl_assert_(git__suffixcmp(git_repository_workdir(repo2), "alternate/") == 0, git_repository_workdir(repo2));

 git_repository_free(repo2);
}
