
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cb_status__count ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_path_isdir (char*) ;
 int git_path_isfile (char*) ;
 int git_status_foreach (int ,int ,int*) ;
 int setup_fixture_submodules () ;

void test_status_submodules__0(void)
{
 int counts = 0;

 g_repo = setup_fixture_submodules();

 cl_assert(git_path_isdir("submodules/.git"));
 cl_assert(git_path_isdir("submodules/testrepo/.git"));
 cl_assert(git_path_isfile("submodules/.gitmodules"));

 cl_git_pass(
  git_status_foreach(g_repo, cb_status__count, &counts)
 );

 cl_assert_equal_i(6, counts);
}
