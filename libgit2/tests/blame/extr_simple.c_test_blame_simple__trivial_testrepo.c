
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_blame_hunk_index (int ,int ,int,int,int,int ,char*,char*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int g_blame ;
 int g_repo ;
 int git_blame_file (int *,int ,char*,int *) ;
 int git_blame_get_hunk_count (int ) ;
 int git_repository_open (int *,int ) ;

void test_blame_simple__trivial_testrepo(void)
{
 cl_git_pass(git_repository_open(&g_repo, cl_fixture("testrepo/.gitted")));
 cl_git_pass(git_blame_file(&g_blame, g_repo, "branch_file.txt", ((void*)0)));

 cl_assert_equal_i(2, git_blame_get_hunk_count(g_blame));
 check_blame_hunk_index(g_repo, g_blame, 0, 1, 1, 0, "c47800c7", "branch_file.txt");
 check_blame_hunk_index(g_repo, g_blame, 1, 2, 1, 0, "a65fedf3", "branch_file.txt");
}
