
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* notify_payload; int notify_cb; int notify_flags; } ;
struct TYPE_5__ {char* checkout_branch; TYPE_1__ checkout_opts; } ;


 int GIT_CHECKOUT_NOTIFY_UPDATED ;
 int cl_assert (int) ;
 int cl_git_fail_with (int ,int) ;
 int cl_git_fixture_url (char*) ;
 int clone_cancel_checkout_cb ;
 TYPE_2__ g_options ;
 int g_repo ;
 int git_clone (int *,int ,char*,TYPE_2__*) ;
 int git_path_exists (char*) ;

void test_clone_nonetwork__can_cancel_clone_in_checkout(void)
{
 g_options.checkout_branch = "test";

 g_options.checkout_opts.notify_flags = GIT_CHECKOUT_NOTIFY_UPDATED;
 g_options.checkout_opts.notify_cb = clone_cancel_checkout_cb;
 g_options.checkout_opts.notify_payload = "readme.txt";

 cl_git_fail_with(git_clone(
  &g_repo, cl_git_fixture_url("testrepo.git"), "./foo", &g_options),
  -12345);

 cl_assert(!g_repo);
 cl_assert(!git_path_exists("foo/readme.txt"));
}
