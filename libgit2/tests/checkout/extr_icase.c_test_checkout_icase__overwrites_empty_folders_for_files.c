
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
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int git_checkout_tree (int ,int ,TYPE_1__*) ;
 int git_path_isdir (char*) ;
 int obj ;
 int p_mkdir (char*,int) ;
 int repo ;

void test_checkout_icase__overwrites_empty_folders_for_files(void)
{
 checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE|GIT_CHECKOUT_RECREATE_MISSING;

 cl_must_pass(p_mkdir("testrepo/NEW.txt", 0777));

 cl_git_pass(git_checkout_tree(repo, obj, &checkout_opts));

 assert_name_is("testrepo/new.txt");
 cl_assert(!git_path_isdir("testrepo/new.txt"));
}
