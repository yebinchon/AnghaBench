
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int cl_git_pass (int ) ;
 int g_repo ;
 int git_index_free (int *) ;
 int git_index_new (int **) ;
 int git_repository_set_index (int ,int *) ;
 int test_submodule_lookup__simple_lookup () ;

void test_submodule_lookup__lookup_even_with_missing_index(void)
{
 git_index *idx;


 cl_git_pass(git_index_new(&idx));
 git_repository_set_index(g_repo, idx);
 git_index_free(idx);

 test_submodule_lookup__simple_lookup();
}
