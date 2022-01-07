
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int checkout_strategy; } ;


 int GIT_CHECKOUT_RECREATE_MISSING ;
 int GIT_CHECKOUT_SAFE ;
 int assert_name_is (char*) ;
 TYPE_1__ checkout_opts ;
 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 int cl_must_pass (int ) ;
 int git_checkout_tree (int ,int ,TYPE_1__*) ;
 int git_path_exists (char*) ;
 int obj ;
 int repo ;
 int symlink_or_fake (int ,char*,char*) ;

void test_checkout_icase__refuses_to_overwrite_links_for_files(void)
{
 checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE|GIT_CHECKOUT_RECREATE_MISSING;

 cl_must_pass(symlink_or_fake(repo, "../tmp", "testrepo/BRANCH_FILE.txt"));

 cl_git_fail(git_checkout_tree(repo, obj, &checkout_opts));

 cl_assert(!git_path_exists("tmp"));
 assert_name_is("testrepo/BRANCH_FILE.txt");
}
