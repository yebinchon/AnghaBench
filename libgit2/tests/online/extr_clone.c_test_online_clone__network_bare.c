
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_remote ;
struct TYPE_3__ {int bare; } ;


 int LIVE_REPO_URL ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 TYPE_1__ g_options ;
 int g_repo ;
 int git_clone (int *,int ,char*,TYPE_1__*) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int ,char*) ;
 int git_repository_is_bare (int ) ;

void test_online_clone__network_bare(void)
{
 git_remote *origin;

 g_options.bare = 1;

 cl_git_pass(git_clone(&g_repo, LIVE_REPO_URL, "./foo", &g_options));
 cl_assert(git_repository_is_bare(g_repo));
 cl_git_pass(git_remote_lookup(&origin, g_repo, "origin"));

 git_remote_free(origin);
}
