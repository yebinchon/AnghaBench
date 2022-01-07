
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int progress_cb; } ;
typedef TYPE_1__ git_stash_apply_options ;


 TYPE_1__ GIT_STASH_APPLY_OPTIONS_INIT ;
 int aborting_progress_cb ;
 int cl_git_fail_with (int,int ) ;
 int git_stash_apply (int ,int ,TYPE_1__*) ;
 int repo ;

void test_stash_apply__progress_cb_can_abort(void)
{
 git_stash_apply_options opts = GIT_STASH_APPLY_OPTIONS_INIT;

 opts.progress_cb = aborting_progress_cb;

 cl_git_fail_with(-44, git_stash_apply(repo, 0, &opts));
}
