
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int download_tags; } ;
typedef TYPE_1__ git_remote ;


 int GIT_REMOTE_DOWNLOAD_TAGS_AUTO ;
 int LIVE_REPO_URL ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_options ;
 int g_repo ;
 int git_clone (int *,int ,char*,int *) ;
 int git_remote_free (TYPE_1__*) ;
 int git_remote_lookup (TYPE_1__**,int ,char*) ;
 int git_repository_is_bare (int ) ;

void test_online_clone__network_full(void)
{
 git_remote *origin;

 cl_git_pass(git_clone(&g_repo, LIVE_REPO_URL, "./foo", &g_options));
 cl_assert(!git_repository_is_bare(g_repo));
 cl_git_pass(git_remote_lookup(&origin, g_repo, "origin"));

 cl_assert_equal_i(GIT_REMOTE_DOWNLOAD_TAGS_AUTO, origin->download_tags);

 git_remote_free(origin);
}
