
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int expected_entry_count; char const** expected_paths; unsigned int const* expected_statuses; int wrong_sorted_path; int wrong_status_flags_count; int entry_count; } ;
typedef TYPE_1__ status_entry_counts ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_2__ git_status_options ;



 TYPE_2__ GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_DEFAULTS ;
 int GIT_STATUS_OPT_RECURSE_IGNORED_DIRS ;

 int assert_is_ignored (char*) ;
 int cb_status__normal ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_status_foreach_ext (int ,TYPE_2__*,int ,TYPE_1__*) ;
 int make_test_data (char*,char const**) ;
 int memset (TYPE_1__*,int,int) ;
 int refute_is_ignored (char*) ;

void test_ignore_status__contained_dir_with_matching_name(void)
{
 static const char *test_files[] = {
  "empty_standard_repo/subdir_match/aaa/subdir_match/file",
  "empty_standard_repo/subdir_match/zzz_ignoreme",
  ((void*)0)
 };
 static const char *expected_paths[] = {
  "subdir_match/.gitignore",
  "subdir_match/aaa/subdir_match/file",
  "subdir_match/zzz_ignoreme",
 };
 static const unsigned int expected_statuses[] = {
  128, 128, 129
 };
 git_status_options opts = GIT_STATUS_OPTIONS_INIT;
 status_entry_counts counts;

 make_test_data("empty_standard_repo", test_files);
 cl_git_mkfile(
  "empty_standard_repo/subdir_match/.gitignore", "*_ignoreme\n");

 refute_is_ignored("subdir_match/aaa/subdir_match/file");
 assert_is_ignored("subdir_match/zzz_ignoreme");

 memset(&counts, 0x0, sizeof(status_entry_counts));
 counts.expected_entry_count = 3;
 counts.expected_paths = expected_paths;
 counts.expected_statuses = expected_statuses;

 opts.flags = GIT_STATUS_OPT_DEFAULTS | GIT_STATUS_OPT_RECURSE_IGNORED_DIRS;

 cl_git_pass(git_status_foreach_ext(
  g_repo, &opts, cb_status__normal, &counts));

 cl_assert_equal_i(counts.expected_entry_count, counts.entry_count);
 cl_assert_equal_i(0, counts.wrong_status_flags_count);
 cl_assert_equal_i(0, counts.wrong_sorted_path);
}
