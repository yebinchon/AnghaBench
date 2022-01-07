
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_blame_hunk_index (int ,int ,int,int,int,int,char*,char*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int g_blame ;
 int g_repo ;
 int git_blame_file (int *,int ,char*,int *) ;
 int git_blame_get_hunk_count (int ) ;
 int git_repository_open (int *,int ) ;

void test_blame_simple__trivial_blamerepo(void)
{
 cl_git_pass(git_repository_open(&g_repo, cl_fixture("blametest.git")));
 cl_git_pass(git_blame_file(&g_blame, g_repo, "b.txt", ((void*)0)));

 cl_assert_equal_i(4, git_blame_get_hunk_count(g_blame));
 check_blame_hunk_index(g_repo, g_blame, 0, 1, 4, 0, "da237394", "b.txt");
 check_blame_hunk_index(g_repo, g_blame, 1, 5, 1, 1, "b99f7ac0", "b.txt");
 check_blame_hunk_index(g_repo, g_blame, 2, 6, 5, 0, "63d671eb", "b.txt");
 check_blame_hunk_index(g_repo, g_blame, 3, 11, 5, 0, "aa06ecca", "b.txt");
}
