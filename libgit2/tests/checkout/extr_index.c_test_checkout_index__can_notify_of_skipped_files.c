
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct notify_data {char* file; char* sha; } ;
struct TYPE_4__ {int checkout_strategy; struct notify_data* notify_payload; int notify_cb; int notify_flags; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_ALLOW_CONFLICTS ;
 int GIT_CHECKOUT_NOTIFY_CONFLICT ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_RECREATE_MISSING ;
 int GIT_CHECKOUT_SAFE ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_index (int ,int *,TYPE_1__*) ;
 int test_checkout_notify_cb ;

void test_checkout_index__can_notify_of_skipped_files(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 struct notify_data data;

 cl_git_mkfile("./testrepo/new.txt", "This isn't what's stored!");







 data.file = "new.txt";
 data.sha = "a71586c1dfe8a71c6cbf6c129f404c5642ff31bd";

 opts.checkout_strategy = GIT_CHECKOUT_SAFE |
  GIT_CHECKOUT_RECREATE_MISSING |
  GIT_CHECKOUT_ALLOW_CONFLICTS;
 opts.notify_flags = GIT_CHECKOUT_NOTIFY_CONFLICT;
 opts.notify_cb = test_checkout_notify_cb;
 opts.notify_payload = &data;

 cl_git_pass(git_checkout_index(g_repo, ((void*)0), &opts));
}
