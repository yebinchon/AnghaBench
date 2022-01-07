
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_commit ;


 int ARRAY_SIZE (int *) ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int * failing_commit_cases ;
 scalar_t__ git__prefixcmp (int ,char*) ;
 int git_commit__free (int *) ;
 int git_commit_message (int *) ;
 int parse_commit (int **,int ) ;
 int * passing_commit_cases ;

void test_commit_parse__entire_commit(void)
{
 const int failing_commit_count = ARRAY_SIZE(failing_commit_cases);
 const int passing_commit_count = ARRAY_SIZE(passing_commit_cases);
 int i;
 git_commit *commit;

 for (i = 0; i < failing_commit_count; ++i) {
  cl_git_fail(parse_commit(&commit, failing_commit_cases[i]));
  git_commit__free(commit);
 }

 for (i = 0; i < passing_commit_count; ++i) {
  cl_git_pass(parse_commit(&commit, passing_commit_cases[i]));

  if (!i)
   cl_assert_equal_s("", git_commit_message(commit));
  else
   cl_assert(git__prefixcmp(
    git_commit_message(commit), "a simple commit which works") == 0);

  git_commit__free(commit);
 }
}
