
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_stash_apply_progress_t ;
struct TYPE_4__ {int * progress_payload; int progress_cb; } ;
typedef TYPE_1__ git_stash_apply_options ;


 TYPE_1__ GIT_STASH_APPLY_OPTIONS_INIT ;
 int GIT_STASH_APPLY_PROGRESS_DONE ;
 int GIT_STASH_APPLY_PROGRESS_NONE ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_stash_apply (int ,int ,TYPE_1__*) ;
 int progress_cb ;
 int repo ;

void test_stash_apply__calls_progress_cb(void)
{
 git_stash_apply_options opts = GIT_STASH_APPLY_OPTIONS_INIT;
 git_stash_apply_progress_t progress = GIT_STASH_APPLY_PROGRESS_NONE;

 opts.progress_cb = progress_cb;
 opts.progress_payload = &progress;

 cl_git_pass(git_stash_apply(repo, 0, &opts));
 cl_assert_equal_i(progress, GIT_STASH_APPLY_PROGRESS_DONE);
}
