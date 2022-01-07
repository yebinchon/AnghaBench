
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int FEW_UTF8_CRLF_RAW ;
 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int MANY_UTF8_CRLF_RAW ;
 int check_file_contents (char*,int ) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_repo ;
 int git_checkout_head (int ,TYPE_1__*) ;
 int git_repository_set_head (int ,char*) ;

void test_checkout_crlf__detect_crlf_autocrlf_true_utf8(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 cl_repo_set_bool(g_repo, "core.autocrlf", 1);

 git_repository_set_head(g_repo, "refs/heads/master");
 git_checkout_head(g_repo, &opts);

 check_file_contents("./crlf/few-utf8-chars-lf", FEW_UTF8_CRLF_RAW);
 check_file_contents("./crlf/many-utf8-chars-lf", MANY_UTF8_CRLF_RAW);

 check_file_contents("./crlf/few-utf8-chars-crlf", FEW_UTF8_CRLF_RAW);
 check_file_contents("./crlf/many-utf8-chars-crlf", MANY_UTF8_CRLF_RAW);
}
