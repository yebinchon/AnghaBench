
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checkout_strategy; int disable_filters; } ;
typedef TYPE_1__ git_checkout_options ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_RECREATE_MISSING ;
 int GIT_CHECKOUT_SAFE ;
 int check_file_contents (char*,char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_index (int ,int *,TYPE_1__*) ;
 int p_unlink (char*) ;

void test_checkout_index__options_disable_filters(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 cl_git_mkfile("./testrepo/.gitattributes", "*.txt text eol=crlf\n");

 opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_RECREATE_MISSING;
 opts.disable_filters = 0;

 cl_git_pass(git_checkout_index(g_repo, ((void*)0), &opts));

 check_file_contents("./testrepo/new.txt", "my new file\r\n");

 p_unlink("./testrepo/new.txt");

 opts.disable_filters = 1;
 cl_git_pass(git_checkout_index(g_repo, ((void*)0), &opts));

 check_file_contents("./testrepo/new.txt", "my new file\n");
}
