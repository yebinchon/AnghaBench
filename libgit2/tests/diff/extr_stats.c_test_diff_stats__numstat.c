
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_DIFF_STATS_NUMBER ;
 int _stats ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int diff_stats_from_commit_oid (int *,char*,int) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_diff_stats_to_buf (int *,int ,int ,int ) ;

void test_diff_stats__numstat(void)
{
 git_buf buf = GIT_BUF_INIT;
 const char *stat =
 "3       2       file2.txt\n"
 "4       2       file3.txt\n";

 diff_stats_from_commit_oid(
  &_stats, "cd471f0d8770371e1bc78bcbb38db4c7e4106bd2", 0);

 cl_git_pass(git_diff_stats_to_buf(&buf, _stats, GIT_DIFF_STATS_NUMBER, 0));
 cl_assert_equal_s(stat, git_buf_cstr(&buf));
 git_buf_dispose(&buf);
}
