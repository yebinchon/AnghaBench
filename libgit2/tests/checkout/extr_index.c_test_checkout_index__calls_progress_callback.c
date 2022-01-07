
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checkout_strategy; int* progress_payload; int progress_cb; } ;
typedef TYPE_1__ git_checkout_options ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_RECREATE_MISSING ;
 int GIT_CHECKOUT_SAFE ;
 int checkout_progress_counter ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_index (int ,int *,TYPE_1__*) ;

void test_checkout_index__calls_progress_callback(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 int calls = 0;

 opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_RECREATE_MISSING;
 opts.progress_cb = checkout_progress_counter;
 opts.progress_payload = &calls;

 cl_git_pass(git_checkout_index(g_repo, ((void*)0), &opts));
 cl_assert(calls > 0);
}
