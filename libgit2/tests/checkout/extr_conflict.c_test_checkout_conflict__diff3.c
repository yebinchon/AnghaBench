
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_checkout_options ;


 int CONFLICTING_DIFF3_FILE ;
 int GIT_CHECKOUT_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int create_conflicting_index () ;
 int ensure_workdir_contents (char*,int ) ;
 int g_index ;
 int g_repo ;
 int git_checkout_index (int ,int ,int *) ;

void test_checkout_conflict__diff3(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 create_conflicting_index();

 cl_git_pass(git_checkout_index(g_repo, g_index, &opts));

 ensure_workdir_contents("conflicting.txt", CONFLICTING_DIFF3_FILE);
}
