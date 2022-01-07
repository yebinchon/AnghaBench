
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int g_idx ;
 int g_repo ;
 int git_repository_index__weakptr (int *,int ) ;
 int setup_fixture_submod2 () ;

void test_index_bypath__initialize(void)
{
 g_repo = setup_fixture_submod2();
 cl_git_pass(git_repository_index__weakptr(&g_idx, g_repo));
}
