
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_ALLOW_CONFLICTS ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int check_file_contents (char*,char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_index (int ,int *,TYPE_1__*) ;

void test_checkout_index__donot_overwrite_modified_file_by_default(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 cl_git_mkfile("./testrepo/new.txt", "This isn't what's stored!");




 opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_ALLOW_CONFLICTS;

 cl_git_pass(git_checkout_index(g_repo, ((void*)0), &opts));

 check_file_contents("./testrepo/new.txt", "This isn't what's stored!");
}
