
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_DIFF_STATS_FULL ;
 int _stats ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_assert_equal_sz (int,int ) ;
 int cl_git_pass (int ) ;
 int diff_stats_from_commit_oid (int *,char*,int) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_diff_stats_deletions (int ) ;
 int git_diff_stats_files_changed (int ) ;
 int git_diff_stats_insertions (int ) ;
 int git_diff_stats_to_buf (int *,int ,int ,int ) ;

void test_diff_stats__rename_nochanges_no_find(void)
{
 git_buf buf = GIT_BUF_INIT;
 const char *stat =
 " file2.txt.renamed  | 6 ------\n"
 " file2.txt.renamed2 | 6 ++++++\n"
 " file3.txt.renamed  | 7 -------\n"
 " file3.txt.renamed2 | 7 +++++++\n"
 " 4 files changed, 13 insertions(+), 13 deletions(-)\n";

 diff_stats_from_commit_oid(
  &_stats, "3991dce9e71a0641ca49a6a4eea6c9e7ff402ed4", 0);

 cl_assert_equal_sz(4, git_diff_stats_files_changed(_stats));
 cl_assert_equal_sz(13, git_diff_stats_insertions(_stats));
 cl_assert_equal_sz(13, git_diff_stats_deletions(_stats));

 cl_git_pass(git_diff_stats_to_buf(&buf, _stats, GIT_DIFF_STATS_FULL, 0));
 cl_assert_equal_s(stat, git_buf_cstr(&buf));
 git_buf_dispose(&buf);
}
