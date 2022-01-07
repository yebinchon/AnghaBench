
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_blame_hunk_index (int ,int ,int,int,int,int,char*,char*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int g_bufferblame ;
 int g_fileblame ;
 int g_repo ;
 int git_blame_buffer (int *,int ,char const*,int ) ;
 int git_blame_get_hunk_count (int ) ;
 int strlen (char const*) ;

void test_blame_buffer__add_lines_at_end(void)
{
 const char *buffer = "EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\nEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\nEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\nEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\n\nBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\nBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\nBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\nBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\n\nCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC\nCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC\nCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC\nCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC\n\nabc\ndef\n";
 cl_git_pass(git_blame_buffer(&g_bufferblame, g_fileblame, buffer, strlen(buffer)));

 cl_assert_equal_i(5, git_blame_get_hunk_count(g_bufferblame));
 check_blame_hunk_index(g_repo, g_bufferblame, 0, 1, 4, 0, "da237394", "b.txt");
 check_blame_hunk_index(g_repo, g_bufferblame, 1, 5, 1, 1, "b99f7ac0", "b.txt");
 check_blame_hunk_index(g_repo, g_bufferblame, 2, 6, 5, 0, "63d671eb", "b.txt");
 check_blame_hunk_index(g_repo, g_bufferblame, 3, 11, 5, 0, "aa06ecca", "b.txt");
 check_blame_hunk_index(g_repo, g_bufferblame, 4, 16, 2, 0, "00000000", "b.txt");
}
