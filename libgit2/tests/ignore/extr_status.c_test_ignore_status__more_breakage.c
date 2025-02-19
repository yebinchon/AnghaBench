
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
 int GIT_STATUS_OPT_INCLUDE_IGNORED ;
 int GIT_STATUS_OPT_RECURSE_IGNORED_DIRS ;

 int add_one_to_index (char*) ;
 int cb_status__normal ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_status_foreach_ext (int ,TYPE_2__*,int ,TYPE_1__*) ;
 int make_test_data (char*,char const**) ;
 int memset (TYPE_1__*,int,int) ;
 int refute_is_ignored (char*) ;

void test_ignore_status__more_breakage(void)
{
 static const char *test_files[] = {
  "empty_standard_repo/d1/pfx-d2/d3/d4/d5/tracked",
  "empty_standard_repo/d1/pfx-d2/d3/d4/d5/untracked",
  "empty_standard_repo/d1/pfx-d2/d3/d4/untracked",
  ((void*)0)
 };

 make_test_data("empty_standard_repo", test_files);
 cl_git_mkfile(
  "empty_standard_repo/.gitignore",
  "/d1/pfx-*\n"
  "!/d1/pfx-d2/\n"
  "/d1/pfx-d2/*\n"
  "!/d1/pfx-d2/d3/\n"
  "/d1/pfx-d2/d3/*\n"
  "!/d1/pfx-d2/d3/d4/\n");
 add_one_to_index("d1/pfx-d2/d3/d4/d5/tracked");

 {
  git_status_options opts = GIT_STATUS_OPTIONS_INIT;
  status_entry_counts counts;
  static const char *files[] = {
   ".gitignore",
   "d1/pfx-d2/d3/d4/d5/tracked",
   "d1/pfx-d2/d3/d4/d5/untracked",
   "d1/pfx-d2/d3/d4/untracked",
  };
  static const unsigned int statuses[] = {
   128,
   129,
   128,
   128,
  };

  memset(&counts, 0x0, sizeof(status_entry_counts));
  counts.expected_entry_count = 4;
  counts.expected_paths = files;
  counts.expected_statuses = statuses;
  opts.flags = GIT_STATUS_OPT_DEFAULTS |
   GIT_STATUS_OPT_INCLUDE_IGNORED |
   GIT_STATUS_OPT_RECURSE_IGNORED_DIRS;
  cl_git_pass(git_status_foreach_ext(
   g_repo, &opts, cb_status__normal, &counts));

  cl_assert_equal_i(counts.expected_entry_count, counts.entry_count);
  cl_assert_equal_i(0, counts.wrong_status_flags_count);
  cl_assert_equal_i(0, counts.wrong_sorted_path);
 }

 refute_is_ignored("d1/pfx-d2/d3/d4/d5/tracked");
 refute_is_ignored("d1/pfx-d2/d3/d4/d5/untracked");
 refute_is_ignored("d1/pfx-d2/d3/d4/untracked");
}
