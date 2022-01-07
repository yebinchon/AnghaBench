
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_UPDATE_ONLY ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_checkout_index (int ,int ,TYPE_1__*) ;
 scalar_t__ git_index_name_entrycount (int ) ;
 int repo ;
 int repo_index ;
 int test_index_names__add () ;

void test_index_names__retained_on_checkout_index(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 opts.checkout_strategy = GIT_CHECKOUT_FORCE | GIT_CHECKOUT_UPDATE_ONLY;

 test_index_names__add();
 cl_git_pass(git_checkout_index(repo, repo_index, &opts));
 cl_assert(git_index_name_entrycount(repo_index) > 0);
}
