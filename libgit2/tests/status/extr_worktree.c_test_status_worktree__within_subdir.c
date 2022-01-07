
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int debug; int wrong_sorted_path; int wrong_status_flags_count; int entry_count; int expected_statuses; int expected_paths; int expected_entry_count; } ;
typedef TYPE_1__ status_entry_counts ;
struct TYPE_9__ {int count; char** strings; } ;
typedef TYPE_2__ git_strarray ;
struct TYPE_10__ {int flags; TYPE_2__ pathspec; } ;
typedef TYPE_3__ git_status_options ;
typedef int git_repository ;


 TYPE_3__ GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH ;
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
 int git_status_foreach_ext (int *,TYPE_3__*,int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int,int) ;
 int stage_and_commit (int *,char*) ;

void test_status_worktree__within_subdir(void)
{
 status_entry_counts counts;
 git_repository *repo = cl_git_sandbox_init("status");
 git_status_options opts = GIT_STATUS_OPTIONS_INIT;
 char *paths[] = { "zzz_new_dir" };
 git_strarray pathsArray;


 cl_git_mkfile("status/.new_file", "dummy");
 cl_git_pass(git_futils_mkdir_r("status/zzz_new_dir", 0777));
 cl_git_mkfile("status/zzz_new_dir/new_file", "dummy");
 cl_git_mkfile("status/zzz_new_file", "dummy");
 cl_git_mkfile("status/wut", "dummy");

 stage_and_commit(repo, "zzz_new_dir/new_file");


 memset(&counts, 0x0, sizeof(status_entry_counts));
 counts.expected_entry_count = entry_count4;
 counts.expected_paths = entry_paths4;
 counts.expected_statuses = entry_statuses4;
 counts.debug = 1;

 opts.flags = GIT_STATUS_OPT_INCLUDE_UNTRACKED |
  GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS |
  GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH;

 pathsArray.count = 1;
 pathsArray.strings = paths;
 opts.pathspec = pathsArray;


 cl_git_pass(
  git_status_foreach_ext(repo, &opts, cb_status__normal, &counts)
 );

 cl_assert_equal_i(0, counts.entry_count);
 cl_assert_equal_i(0, counts.wrong_status_flags_count);
 cl_assert_equal_i(0, counts.wrong_sorted_path);
}
