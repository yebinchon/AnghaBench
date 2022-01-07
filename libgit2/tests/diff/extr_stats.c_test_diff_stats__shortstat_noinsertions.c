
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_DIFF_STATS_SHORT ;
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

void test_diff_stats__shortstat_noinsertions(void)
{
 git_buf buf = GIT_BUF_INIT;
 const char *stat =
 " 1 file changed, 2 deletions(-)\n";

 diff_stats_from_commit_oid(
  &_stats, "06b7b69a62cbd1e53c6c4e0c3f16473dcfdb4af6", 0);

 cl_assert_equal_sz(1, git_diff_stats_files_changed(_stats));
 cl_assert_equal_sz(0, git_diff_stats_insertions(_stats));
 cl_assert_equal_sz(2, git_diff_stats_deletions(_stats));

 cl_git_pass(git_diff_stats_to_buf(&buf, _stats, GIT_DIFF_STATS_SHORT, 0));
 cl_assert_equal_s(stat, git_buf_cstr(&buf));
 git_buf_dispose(&buf);
}
