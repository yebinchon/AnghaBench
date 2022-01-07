
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int checkout_strategy; } ;


 int GIT_CHECKOUT_RECREATE_MISSING ;
 int GIT_CHECKOUT_SAFE ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int assert_name_is (char*) ;
 TYPE_1__ checkout_opts ;
 int cl_git_fail (int ) ;
 int cl_git_write2file (char*,char*,int,int,int) ;
 int git_checkout_tree (int ,int ,TYPE_1__*) ;
 int obj ;
 int repo ;

void test_checkout_icase__refuses_to_overwrite_files_for_files(void)
{
 checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE|GIT_CHECKOUT_RECREATE_MISSING;

 cl_git_write2file("testrepo/BRANCH_FILE.txt", "neue file\n", 10, O_WRONLY | O_CREAT | O_TRUNC, 0644);


 cl_git_fail(git_checkout_tree(repo, obj, &checkout_opts));
 assert_name_is("testrepo/BRANCH_FILE.txt");
}
