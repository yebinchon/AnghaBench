
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_RECREATE_MISSING ;
 int GIT_CHECKOUT_SAFE ;
 int check_file_contents (char*,char*) ;
 int cl_git_mkfile (char*,char const*) ;
 int cl_git_pass (int ) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_repo ;
 int git_checkout_index (int ,int *,TYPE_1__*) ;

void test_checkout_index__honor_the_gitattributes_directives(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 const char *attributes =
  "branch_file.txt text eol=crlf\n"
  "new.txt text eol=lf\n";

 cl_git_mkfile("./testrepo/.gitattributes", attributes);
 cl_repo_set_bool(g_repo, "core.autocrlf", 0);

 opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_RECREATE_MISSING;

 cl_git_pass(git_checkout_index(g_repo, ((void*)0), &opts));

 check_file_contents("./testrepo/README", "hey there\n");
 check_file_contents("./testrepo/new.txt", "my new file\n");
 check_file_contents("./testrepo/branch_file.txt", "hi\r\nbye!\r\n");
}
