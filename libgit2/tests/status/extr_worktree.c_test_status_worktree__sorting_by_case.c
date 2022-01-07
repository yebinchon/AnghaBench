
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int expected_entry_count; int wrong_sorted_path; int wrong_status_flags_count; int entry_count; int * expected_statuses; int * expected_paths; } ;
typedef TYPE_1__ status_entry_counts ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_2__ git_status_options ;
typedef int git_repository ;
typedef int git_index ;
typedef int counts ;


 int GIT_INDEX_CAPABILITY_IGNORE_CASE ;
 TYPE_2__ GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_SORT_CASE_INSENSITIVELY ;
 int GIT_STATUS_OPT_SORT_CASE_SENSITIVELY ;
 void* case_paths ;
 void* case_statuses ;
 int cb_status__normal ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int * cl_git_sandbox_init (char*) ;
 int cl_must_pass (int ) ;
 int git_index_caps (int *) ;
 int git_index_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_status_foreach_ext (int *,TYPE_2__*,int ,TYPE_1__*) ;
 void* icase_paths ;
 void* icase_statuses ;
 int memset (TYPE_1__*,int ,int) ;
 int p_unlink (char*) ;

void test_status_worktree__sorting_by_case(void)
{
 git_repository *repo = cl_git_sandbox_init("icase");
 git_index *index;
 git_status_options opts = GIT_STATUS_OPTIONS_INIT;
 bool native_ignore_case;
 status_entry_counts counts;

 cl_git_pass(git_repository_index(&index, repo));
 native_ignore_case =
  (git_index_caps(index) & GIT_INDEX_CAPABILITY_IGNORE_CASE) != 0;
 git_index_free(index);

 memset(&counts, 0, sizeof(counts));
 counts.expected_entry_count = 0;
 counts.expected_paths = ((void*)0);
 counts.expected_statuses = ((void*)0);
 cl_git_pass(
  git_status_foreach_ext(repo, &opts, cb_status__normal, &counts));
 cl_assert_equal_i(counts.expected_entry_count, counts.entry_count);
 cl_assert_equal_i(0, counts.wrong_status_flags_count);
 cl_assert_equal_i(0, counts.wrong_sorted_path);

 cl_git_rewritefile("icase/B", "new stuff");
 cl_must_pass(p_unlink("icase/c"));
 cl_git_rewritefile("icase/g", "new stuff");
 cl_must_pass(p_unlink("icase/H"));

 memset(&counts, 0, sizeof(counts));
 counts.expected_entry_count = 4;
 if (native_ignore_case) {
  counts.expected_paths = icase_paths;
  counts.expected_statuses = icase_statuses;
 } else {
  counts.expected_paths = case_paths;
  counts.expected_statuses = case_statuses;
 }
 cl_git_pass(
  git_status_foreach_ext(repo, &opts, cb_status__normal, &counts));
 cl_assert_equal_i(counts.expected_entry_count, counts.entry_count);
 cl_assert_equal_i(0, counts.wrong_status_flags_count);
 cl_assert_equal_i(0, counts.wrong_sorted_path);

 opts.flags = GIT_STATUS_OPT_SORT_CASE_SENSITIVELY;

 memset(&counts, 0, sizeof(counts));
 counts.expected_entry_count = 4;
 counts.expected_paths = case_paths;
 counts.expected_statuses = case_statuses;
 cl_git_pass(
  git_status_foreach_ext(repo, &opts, cb_status__normal, &counts));
 cl_assert_equal_i(counts.expected_entry_count, counts.entry_count);
 cl_assert_equal_i(0, counts.wrong_status_flags_count);
 cl_assert_equal_i(0, counts.wrong_sorted_path);

 opts.flags = GIT_STATUS_OPT_SORT_CASE_INSENSITIVELY;

 memset(&counts, 0, sizeof(counts));
 counts.expected_entry_count = 4;
 counts.expected_paths = icase_paths;
 counts.expected_statuses = icase_statuses;
 cl_git_pass(
  git_status_foreach_ext(repo, &opts, cb_status__normal, &counts));
 cl_assert_equal_i(counts.expected_entry_count, counts.entry_count);
 cl_assert_equal_i(0, counts.wrong_status_flags_count);
 cl_assert_equal_i(0, counts.wrong_sorted_path);
}
