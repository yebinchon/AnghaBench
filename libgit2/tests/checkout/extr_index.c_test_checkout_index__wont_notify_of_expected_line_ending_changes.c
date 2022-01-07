
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checkout_strategy; int * notify_payload; int notify_cb; int notify_flags; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_ALLOW_CONFLICTS ;
 int GIT_CHECKOUT_NOTIFY_CONFLICT ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_RECREATE_MISSING ;
 int GIT_CHECKOUT_SAFE ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int dont_notify_cb ;
 int g_repo ;
 int git_checkout_index (int ,int *,TYPE_1__*) ;
 int p_unlink (char*) ;

void test_checkout_index__wont_notify_of_expected_line_ending_changes(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 cl_git_pass(p_unlink("./testrepo/.gitattributes"));
 cl_repo_set_bool(g_repo, "core.autocrlf", 1);

 cl_git_mkfile("./testrepo/new.txt", "my new file\r\n");

 opts.checkout_strategy =
  GIT_CHECKOUT_SAFE |
  GIT_CHECKOUT_RECREATE_MISSING |
  GIT_CHECKOUT_ALLOW_CONFLICTS;
 opts.notify_flags = GIT_CHECKOUT_NOTIFY_CONFLICT;
 opts.notify_cb = dont_notify_cb;
 opts.notify_payload = ((void*)0);

 cl_git_pass(git_checkout_index(g_repo, ((void*)0), &opts));
}
