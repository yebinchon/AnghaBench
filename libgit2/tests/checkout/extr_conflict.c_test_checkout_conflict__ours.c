
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int CONFLICTING_OURS_FILE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_USE_OURS ;
 int cl_git_pass (int ) ;
 int create_conflicting_index () ;
 int ensure_workdir_contents (char*,int ) ;
 int g_index ;
 int g_repo ;
 int git_checkout_index (int ,int ,TYPE_1__*) ;

void test_checkout_conflict__ours(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 opts.checkout_strategy |= GIT_CHECKOUT_USE_OURS;

 create_conflicting_index();

 cl_git_pass(git_checkout_index(g_repo, g_index, &opts));

 ensure_workdir_contents("conflicting.txt", CONFLICTING_OURS_FILE);
}
