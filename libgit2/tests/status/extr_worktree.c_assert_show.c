
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int expected_entry_count; char const** expected_paths; unsigned int const* expected_statuses; int wrong_sorted_path; int wrong_status_flags_count; int entry_count; } ;
typedef TYPE_1__ status_entry_counts ;
typedef int git_status_show_t ;
struct TYPE_8__ {unsigned int flags; int show; } ;
typedef TYPE_2__ git_status_options ;
typedef int git_repository ;


 TYPE_2__ GIT_STATUS_OPTIONS_INIT ;
 unsigned int GIT_STATUS_OPT_DEFAULTS ;
 int cb_status__normal ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int git_status_foreach_ext (int *,TYPE_2__*,int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int,int) ;

void assert_show(
 const int entry_counts,
 const char *entry_paths[],
 const unsigned int entry_statuses[],
 git_repository *repo,
 git_status_show_t show,
 unsigned int extra_flags)
{
 status_entry_counts counts;
 git_status_options opts = GIT_STATUS_OPTIONS_INIT;

 memset(&counts, 0x0, sizeof(status_entry_counts));
 counts.expected_entry_count = entry_counts;
 counts.expected_paths = entry_paths;
 counts.expected_statuses = entry_statuses;

 opts.flags = GIT_STATUS_OPT_DEFAULTS | extra_flags;
 opts.show = show;

 cl_git_pass(
  git_status_foreach_ext(repo, &opts, cb_status__normal, &counts)
 );

 cl_assert_equal_i(counts.expected_entry_count, counts.entry_count);
 cl_assert_equal_i(0, counts.wrong_status_flags_count);
 cl_assert_equal_i(0, counts.wrong_sorted_path);
}
