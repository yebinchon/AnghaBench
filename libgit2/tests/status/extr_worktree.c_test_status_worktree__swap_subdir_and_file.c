
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int wrong_sorted_path; int wrong_status_flags_count; int entry_count; int expected_entry_count; int expected_statuses; int expected_paths; } ;
typedef TYPE_1__ status_entry_counts ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_2__ git_status_options ;
typedef int git_repository ;
typedef int git_index ;


 int GIT_INDEX_CAPABILITY_IGNORE_CASE ;
 TYPE_2__ GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_INCLUDE_IGNORED ;
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ;
 int cb_status__normal ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int entry_count3 ;
 int entry_paths3 ;
 int entry_paths3_icase ;
 int entry_statuses3 ;
 int entry_statuses3_icase ;
 int git_index_caps (int *) ;
 int git_index_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_status_foreach_ext (int *,TYPE_2__*,int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int,int) ;
 int p_rename (char*,char*) ;

void test_status_worktree__swap_subdir_and_file(void)
{
 status_entry_counts counts;
 git_repository *repo = cl_git_sandbox_init("status");
 git_index *index;
 git_status_options opts = GIT_STATUS_OPTIONS_INIT;
 bool ignore_case;

 cl_git_pass(git_repository_index(&index, repo));
 ignore_case = (git_index_caps(index) & GIT_INDEX_CAPABILITY_IGNORE_CASE) != 0;
 git_index_free(index);


 cl_git_pass(p_rename("status/current_file", "status/swap"));
 cl_git_pass(p_rename("status/subdir", "status/current_file"));
 cl_git_pass(p_rename("status/swap", "status/subdir"));

 cl_git_mkfile("status/.HEADER", "dummy");
 cl_git_mkfile("status/42-is-not-prime.sigh", "dummy");
 cl_git_mkfile("status/README.md", "dummy");


 memset(&counts, 0x0, sizeof(status_entry_counts));
 counts.expected_entry_count = entry_count3;
 counts.expected_paths = ignore_case ? entry_paths3_icase : entry_paths3;
 counts.expected_statuses = ignore_case ? entry_statuses3_icase : entry_statuses3;

 opts.flags = GIT_STATUS_OPT_INCLUDE_UNTRACKED |
  GIT_STATUS_OPT_INCLUDE_IGNORED;

 cl_git_pass(
  git_status_foreach_ext(repo, &opts, cb_status__normal, &counts)
 );

 cl_assert_equal_i(counts.expected_entry_count, counts.entry_count);
 cl_assert_equal_i(0, counts.wrong_status_flags_count);
 cl_assert_equal_i(0, counts.wrong_sorted_path);
}
