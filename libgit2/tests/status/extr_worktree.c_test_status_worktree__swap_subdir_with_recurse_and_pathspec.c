
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


 TYPE_2__ GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ;
 int GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS ;
 int cb_status__normal ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int entry_count4 ;
 int entry_paths4 ;
 int entry_statuses4 ;
 int git_futils_mkdir_r (char*,int) ;
 int git_status_foreach_ext (int *,TYPE_2__*,int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int,int) ;
 int p_rename (char*,char*) ;

void test_status_worktree__swap_subdir_with_recurse_and_pathspec(void)
{
 status_entry_counts counts;
 git_repository *repo = cl_git_sandbox_init("status");
 git_status_options opts = GIT_STATUS_OPTIONS_INIT;


 cl_git_pass(p_rename("status/current_file", "status/swap"));
 cl_git_pass(p_rename("status/subdir", "status/current_file"));
 cl_git_pass(p_rename("status/swap", "status/subdir"));
 cl_git_mkfile("status/.new_file", "dummy");
 cl_git_pass(git_futils_mkdir_r("status/zzz_new_dir", 0777));
 cl_git_mkfile("status/zzz_new_dir/new_file", "dummy");
 cl_git_mkfile("status/zzz_new_file", "dummy");


 memset(&counts, 0x0, sizeof(status_entry_counts));
 counts.expected_entry_count = entry_count4;
 counts.expected_paths = entry_paths4;
 counts.expected_statuses = entry_statuses4;

 opts.flags = GIT_STATUS_OPT_INCLUDE_UNTRACKED |
  GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS;


 cl_git_pass(
  git_status_foreach_ext(repo, &opts, cb_status__normal, &counts)
 );

 cl_assert_equal_i(counts.expected_entry_count, counts.entry_count);
 cl_assert_equal_i(0, counts.wrong_status_flags_count);
 cl_assert_equal_i(0, counts.wrong_sorted_path);
}
