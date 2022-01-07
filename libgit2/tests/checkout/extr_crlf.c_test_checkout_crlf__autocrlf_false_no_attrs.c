
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int ALL_CRLF_TEXT_RAW ;
 int ALL_LF_TEXT_RAW ;
 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int check_file_contents (char*,int ) ;
 int cl_git_pass (int ) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_repo ;
 int git_checkout_head (int ,TYPE_1__*) ;

void test_checkout_crlf__autocrlf_false_no_attrs(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 cl_repo_set_bool(g_repo, "core.autocrlf", 0);

 cl_git_pass(git_checkout_head(g_repo, &opts));

 check_file_contents("./crlf/all-lf", ALL_LF_TEXT_RAW);
 check_file_contents("./crlf/all-crlf", ALL_CRLF_TEXT_RAW);
}
