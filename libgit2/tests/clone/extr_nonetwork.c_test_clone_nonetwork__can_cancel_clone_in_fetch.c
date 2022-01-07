
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int transfer_progress; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
struct TYPE_7__ {char* checkout_branch; TYPE_2__ fetch_opts; } ;


 int cl_assert (int) ;
 int cl_git_fail_with (int ,int) ;
 int cl_git_fixture_url (char*) ;
 int clone_cancel_fetch_transfer_progress_cb ;
 TYPE_3__ g_options ;
 int g_repo ;
 int git_clone (int *,int ,char*,TYPE_3__*) ;
 int git_path_exists (char*) ;

void test_clone_nonetwork__can_cancel_clone_in_fetch(void)
{
 g_options.checkout_branch = "test";

 g_options.fetch_opts.callbacks.transfer_progress =
  clone_cancel_fetch_transfer_progress_cb;

 cl_git_fail_with(git_clone(
  &g_repo, cl_git_fixture_url("testrepo.git"), "./foo", &g_options),
  -54321);

 cl_assert(!g_repo);
 cl_assert(!git_path_exists("foo/readme.txt"));
}
