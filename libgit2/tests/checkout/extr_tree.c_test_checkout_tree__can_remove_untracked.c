
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_REMOVE_UNTRACKED ;
 int GIT_CHECKOUT_SAFE ;
 int cl_assert (int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_head (int ,TYPE_1__*) ;
 int git_path_isfile (char*) ;

void test_checkout_tree__can_remove_untracked(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_REMOVE_UNTRACKED;

 cl_git_mkfile("testrepo/untracked_file", "as you wish");
 cl_assert(git_path_isfile("testrepo/untracked_file"));

 cl_git_pass(git_checkout_head(g_repo, &opts));

 cl_assert(!git_path_isfile("testrepo/untracked_file"));
}
