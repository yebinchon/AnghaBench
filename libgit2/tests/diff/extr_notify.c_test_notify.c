
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int notify_expected ;
struct TYPE_8__ {char** strings; int count; } ;
struct TYPE_9__ {int flags; int * payload; TYPE_1__ pathspec; int notify_cb; } ;
typedef TYPE_2__ git_diff_options ;
typedef int git_diff ;
typedef int exp ;
struct TYPE_10__ {int files; } ;
typedef TYPE_3__ diff_expects ;


 int GIT_DIFF_INCLUDE_IGNORED ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ;
 int assert_called_notifications ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int diff_file_cb ;
 int g_repo ;
 int git_diff_foreach (int *,int ,int *,int *,int *,TYPE_3__*) ;
 int git_diff_free (int *) ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_2__*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void test_notify(
 char **searched_pathspecs,
 int pathspecs_count,
 notify_expected *expected_matched_pathspecs,
 int expected_diffed_files_count)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 diff_expects exp;

 g_repo = cl_git_sandbox_init("status");

 opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;
 opts.notify_cb = assert_called_notifications;
 opts.pathspec.strings = searched_pathspecs;
 opts.pathspec.count = pathspecs_count;

 opts.payload = expected_matched_pathspecs;
 memset(&exp, 0, sizeof(exp));

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));
 cl_git_pass(git_diff_foreach(diff, diff_file_cb, ((void*)0), ((void*)0), ((void*)0), &exp));

 cl_assert_equal_i(expected_diffed_files_count, exp.files);

 git_diff_free(diff);
}
