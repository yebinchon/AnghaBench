
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_DIFF_STATS_FULL ;
 int _stats ;
 int cl_assert (int) ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_pass (int ) ;
 int diff_stats_from_commit_oid (int *,char*,int) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_diff_stats_deletions (int ) ;
 int git_diff_stats_files_changed (int ) ;
 int git_diff_stats_insertions (int ) ;
 int git_diff_stats_to_buf (int *,int ,int ,int) ;
 scalar_t__ strcmp (int ,char const*) ;

void test_diff_stats__stat(void)
{
 git_buf buf = GIT_BUF_INIT;
 const char *stat =
 " file1.txt | 8 +++++---\n" " 1 file changed, 5 insertions(+), 3 deletions(-)\n";


 diff_stats_from_commit_oid(
  &_stats, "9264b96c6d104d0e07ae33d3007b6a48246c6f92", 0);

 cl_assert_equal_sz(1, git_diff_stats_files_changed(_stats));
 cl_assert_equal_sz(5, git_diff_stats_insertions(_stats));
 cl_assert_equal_sz(3, git_diff_stats_deletions(_stats));

 cl_git_pass(git_diff_stats_to_buf(&buf, _stats, GIT_DIFF_STATS_FULL, 0));
 cl_assert(strcmp(git_buf_cstr(&buf), stat) == 0);
 git_buf_dispose(&buf);

 cl_git_pass(git_diff_stats_to_buf(&buf, _stats, GIT_DIFF_STATS_FULL, 80));
 cl_assert(strcmp(git_buf_cstr(&buf), stat) == 0);
 git_buf_dispose(&buf);
}
