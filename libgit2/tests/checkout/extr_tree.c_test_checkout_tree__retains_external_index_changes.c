
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int assert_status_entrycount (int ,int) ;
 int g_repo ;
 int modify_index_and_checkout_tree (TYPE_1__*) ;

void test_checkout_tree__retains_external_index_changes(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 opts.checkout_strategy = GIT_CHECKOUT_SAFE;

 modify_index_and_checkout_tree(&opts);
 assert_status_entrycount(g_repo, 1);
}
