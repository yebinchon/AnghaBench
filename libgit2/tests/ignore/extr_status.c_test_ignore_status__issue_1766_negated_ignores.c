
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int expected_entry_count; char const** expected_paths; unsigned int const* expected_statuses; int entry_count; int wrong_status_flags_count; int wrong_sorted_path; } ;
typedef TYPE_1__ status_entry_counts ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_2__ git_status_options ;



 TYPE_2__ GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_DEFAULTS ;

 int assert_is_ignored (char*) ;
 int cb_status__normal ;
 int cl_assert_equal_i (unsigned int const,int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_futils_mkdir_r (char*,int) ;
 int git_status_file (unsigned int*,int ,char*) ;
 int git_status_foreach_ext (int ,TYPE_2__*,int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int,int) ;
 int refute_is_ignored (char*) ;

void test_ignore_status__issue_1766_negated_ignores(void)
{
 unsigned int status;

 g_repo = cl_git_sandbox_init("empty_standard_repo");

 cl_git_pass(git_futils_mkdir_r(
  "empty_standard_repo/a", 0775));
 cl_git_mkfile(
  "empty_standard_repo/a/.gitignore", "*\n!.gitignore\n");
 cl_git_mkfile(
  "empty_standard_repo/a/ignoreme", "I should be ignored\n");

 refute_is_ignored("a/.gitignore");
 assert_is_ignored("a/ignoreme");

 cl_git_pass(git_futils_mkdir_r(
  "empty_standard_repo/b", 0775));
 cl_git_mkfile(
  "empty_standard_repo/b/.gitignore", "*\n!.gitignore\n");
 cl_git_mkfile(
  "empty_standard_repo/b/ignoreme", "I should be ignored\n");

 refute_is_ignored("b/.gitignore");
 assert_is_ignored("b/ignoreme");


 refute_is_ignored("a/.gitignore");
 assert_is_ignored("a/ignoreme");



 cl_git_pass(git_status_file(&status, g_repo, "a/.gitignore"));
 cl_assert_equal_i(128, (int)status);

 cl_git_pass(git_status_file(&status, g_repo, "a/ignoreme"));
 cl_assert_equal_i(129, (int)status);

 cl_git_pass(git_status_file(&status, g_repo, "b/.gitignore"));
 cl_assert_equal_i(128, (int)status);

 cl_git_pass(git_status_file(&status, g_repo, "b/ignoreme"));
 cl_assert_equal_i(129, (int)status);

 {
  git_status_options opts = GIT_STATUS_OPTIONS_INIT;
  status_entry_counts counts;
  static const char *paths[] = {
   "a/.gitignore",
   "a/ignoreme",
   "b/.gitignore",
   "b/ignoreme",
  };
  static const unsigned int statuses[] = {
   128,
   129,
   128,
   129,
  };

  memset(&counts, 0x0, sizeof(status_entry_counts));
  counts.expected_entry_count = 4;
  counts.expected_paths = paths;
  counts.expected_statuses = statuses;

  opts.flags = GIT_STATUS_OPT_DEFAULTS;

  cl_git_pass(git_status_foreach_ext(
   g_repo, &opts, cb_status__normal, &counts));

  cl_assert_equal_i(counts.expected_entry_count, counts.entry_count);
  cl_assert_equal_i(0, counts.wrong_status_flags_count);
  cl_assert_equal_i(0, counts.wrong_sorted_path);
 }
}
