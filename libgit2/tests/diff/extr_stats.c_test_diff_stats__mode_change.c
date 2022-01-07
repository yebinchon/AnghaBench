
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_DIFF_STATS_FULL ;
 int GIT_DIFF_STATS_INCLUDE_SUMMARY ;
 int _stats ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int diff_stats_from_commit_oid (int *,char*,int) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_diff_stats_to_buf (int *,int ,int,int ) ;

void test_diff_stats__mode_change(void)
{
 git_buf buf = GIT_BUF_INIT;
 const char *stat =
 " file1.txt.renamed | 0\n" " 1 file changed, 0 insertions(+), 0 deletions(-)\n" " mode change 100644 => 100755 file1.txt.renamed\n";



 diff_stats_from_commit_oid(
  &_stats, "7ade76dd34bba4733cf9878079f9fd4a456a9189", 0);

 cl_git_pass(git_diff_stats_to_buf(&buf, _stats, GIT_DIFF_STATS_FULL | GIT_DIFF_STATS_INCLUDE_SUMMARY, 0));
 cl_assert_equal_s(stat, git_buf_cstr(&buf));
 git_buf_dispose(&buf);
}
