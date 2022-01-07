
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int min_line; } ;
typedef TYPE_1__ git_blame_options ;


 TYPE_1__ GIT_BLAME_OPTIONS_INIT ;
 int check_blame_hunk_index (int ,int ,int,int,int,int ,char*,char*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int g_blame ;
 int g_repo ;
 int git_blame_file (int *,int ,char*,TYPE_1__*) ;
 int git_blame_get_hunk_count (int ) ;
 int git_repository_open (int *,int ) ;

void test_blame_simple__can_restrict_lines_min(void)
{
 git_blame_options opts = GIT_BLAME_OPTIONS_INIT;

 cl_git_pass(git_repository_open(&g_repo, cl_fixture("blametest.git")));

 opts.min_line = 8;
 cl_git_pass(git_blame_file(&g_blame, g_repo, "b.txt", &opts));
 cl_assert_equal_i(2, git_blame_get_hunk_count(g_blame));
 check_blame_hunk_index(g_repo, g_blame, 0, 8, 3, 0, "63d671eb", "b.txt");
 check_blame_hunk_index(g_repo, g_blame, 1, 11, 5, 0, "aa06ecca", "b.txt");
}
