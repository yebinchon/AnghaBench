
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_checkout_head (int ,TYPE_1__*) ;
 int repo ;
 int reuc_entry_exists () ;
 int test_index_reuc__add () ;

void test_index_reuc__cleaned_on_checkout_head(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 test_index_reuc__add();
 cl_git_pass(git_checkout_head(repo, &opts));
 cl_assert(reuc_entry_exists() == 0);
}
