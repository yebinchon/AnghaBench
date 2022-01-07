
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* payload; int update_tips; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
struct TYPE_7__ {TYPE_2__ fetch_opts; } ;


 int LIVE_REPO_URL ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 TYPE_3__ g_options ;
 int g_repo ;
 int git_clone (int *,int ,char*,TYPE_3__*) ;
 int update_tips ;

void test_online_clone__custom_remote_callbacks(void)
{
 int callcount = 0;

 g_options.fetch_opts.callbacks.update_tips = update_tips;
 g_options.fetch_opts.callbacks.payload = &callcount;

 cl_git_pass(git_clone(&g_repo, LIVE_REPO_URL, "./foo", &g_options));
 cl_assert(callcount > 0);
}
