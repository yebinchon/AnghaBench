
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIVE_REPO_URL ;
 int cl_git_pass (int ) ;
 int g_options ;
 int g_repo ;
 int git_clone (int *,int ,char*,int *) ;

__attribute__((used)) static void fetchhead_test_clone(void)
{
 cl_git_pass(git_clone(&g_repo, LIVE_REPO_URL, "./foo", &g_options));
}
