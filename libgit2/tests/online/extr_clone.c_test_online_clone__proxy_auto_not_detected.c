
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
struct TYPE_6__ {TYPE_1__ proxy_opts; } ;
struct TYPE_7__ {TYPE_2__ fetch_opts; } ;


 int GIT_PROXY_AUTO ;
 int cl_git_pass (int ) ;
 TYPE_3__ g_options ;
 int g_repo ;
 int git_clone (int *,char*,char*,TYPE_3__*) ;

void test_online_clone__proxy_auto_not_detected(void)
{
 g_options.fetch_opts.proxy_opts.type = GIT_PROXY_AUTO;

 cl_git_pass(git_clone(&g_repo, "http://github.com/libgit2/TestGitRepository", "./foo", &g_options));
}
