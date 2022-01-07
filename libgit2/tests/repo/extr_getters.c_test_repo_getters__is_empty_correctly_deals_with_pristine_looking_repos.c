
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cl_assert_equal_i (int,int ) ;
 int cl_git_remove_placeholders (int ,char*) ;
 int cl_git_sandbox_cleanup () ;
 int * cl_git_sandbox_init (char*) ;
 int git_repository_is_empty (int *) ;
 int git_repository_path (int *) ;

void test_repo_getters__is_empty_correctly_deals_with_pristine_looking_repos(void)
{
 git_repository *repo;

 repo = cl_git_sandbox_init("empty_bare.git");
 cl_git_remove_placeholders(git_repository_path(repo), "dummy-marker.txt");

 cl_assert_equal_i(1, git_repository_is_empty(repo));

 cl_git_sandbox_cleanup();
}
