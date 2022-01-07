
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_index ;


 int GIT_EBAREREPO ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_free (int *) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_repository_open (int **,int ) ;

void test_index_tests__add_bypath_to_a_bare_repository_returns_EBAREPO(void)
{
 git_repository *bare_repo;
 git_index *index;

 cl_git_pass(git_repository_open(&bare_repo, cl_fixture("testrepo.git")));
 cl_git_pass(git_repository_index(&index, bare_repo));

 cl_assert_equal_i(GIT_EBAREREPO, git_index_add_bypath(index, "test.txt"));

 git_index_free(index);
 git_repository_free(bare_repo);
}
