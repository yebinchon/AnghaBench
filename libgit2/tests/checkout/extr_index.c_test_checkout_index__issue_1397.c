
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int check_file_contents (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int cl_git_sandbox_init (char*) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_repo ;
 int git_checkout_index (int ,int *,TYPE_1__*) ;

void test_checkout_index__issue_1397(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 cl_git_sandbox_cleanup();
 g_repo = cl_git_sandbox_init("issue_1397");

 cl_repo_set_bool(g_repo, "core.autocrlf", 1);

 opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 cl_git_pass(git_checkout_index(g_repo, ((void*)0), &opts));

 check_file_contents("./issue_1397/crlf_file.txt", "first line\r\nsecond line\r\nboth with crlf");
}
