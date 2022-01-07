
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ git_diff_options ;
struct TYPE_7__ {int status; } ;
typedef TYPE_2__ git_diff_delta ;
typedef int git_diff ;


 int GIT_DELTA_UNTRACKED ;
 int GIT_DIFF_INCLUDE_UNTRACKED ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int GIT_DIFF_SHOW_UNTRACKED_CONTENT ;
 int O_CREAT ;
 int O_WRONLY ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int cl_git_write2file (char*,char*,int,int,int) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_repo ;
 int git_diff_free (int *) ;
 TYPE_2__* git_diff_get_delta (int *,int ) ;
 int git_diff_index_to_workdir (int **,int ,int *,TYPE_1__*) ;
 int git_diff_num_deltas (int *) ;

void test_diff_workdir__untracked_with_bom(void)
{
 git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
 git_diff *diff = ((void*)0);
 const git_diff_delta *delta;

 g_repo = cl_git_sandbox_init("empty_standard_repo");
 cl_repo_set_bool(g_repo, "core.autocrlf", 1);

 cl_git_write2file("empty_standard_repo/bom.txt",
  "\xFF\xFE\x31\x00\x32\x00\x33\x00\x34\x00", 10, O_WRONLY|O_CREAT, 0664);

 opts.flags =
  GIT_DIFF_INCLUDE_UNTRACKED | GIT_DIFF_SHOW_UNTRACKED_CONTENT;

 cl_git_pass(git_diff_index_to_workdir(&diff, g_repo, ((void*)0), &opts));

 cl_assert_equal_i(1, git_diff_num_deltas(diff));
 cl_assert((delta = git_diff_get_delta(diff, 0)) != ((void*)0));
 cl_assert_equal_i(GIT_DELTA_UNTRACKED, delta->status);





 git_diff_free(diff);
}
