
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_REMOVE_IGNORED ;
 int GIT_CHECKOUT_SAFE ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_head (int ,TYPE_1__*) ;
 int git_ignore_add_rule (int ,char*) ;
 int git_ignore_path_is_ignored (int*,int ,char*) ;
 int git_path_isfile (char*) ;

void test_checkout_tree__can_remove_ignored(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 int ignored = 0;

 opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_REMOVE_IGNORED;

 cl_git_mkfile("testrepo/ignored_file", "as you wish");

 cl_git_pass(git_ignore_add_rule(g_repo, "ignored_file\n"));

 cl_git_pass(git_ignore_path_is_ignored(&ignored, g_repo, "ignored_file"));
 cl_assert_equal_i(1, ignored);

 cl_assert(git_path_isfile("testrepo/ignored_file"));

 cl_git_pass(git_checkout_head(g_repo, &opts));

 cl_assert(!git_path_isfile("testrepo/ignored_file"));
}
