
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int transfer_progress; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
struct TYPE_7__ {TYPE_2__ fetch_opts; } ;


 int LIVE_REPO_URL ;
 int cancel_at_half ;
 int cl_git_fail_with (int ,int) ;
 TYPE_3__ g_options ;
 int g_repo ;
 int git_clone (int *,int ,char*,TYPE_3__*) ;

void test_online_clone__can_cancel(void)
{
 g_options.fetch_opts.callbacks.transfer_progress = cancel_at_half;

 cl_git_fail_with(
  git_clone(&g_repo, LIVE_REPO_URL, "./foo", &g_options), 4321);
}
