
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int message; } ;


 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_repository ;
 int g_repo ;
 scalar_t__ git__prefixcmp (int ,char*) ;
 TYPE_1__* git_error_last () ;
 int git_repository_fetchhead_foreach (int ,int ,int *) ;
 int git_repository_init (int *,char*,int ) ;
 int read_noop ;

void test_fetchhead_nonetwork__invalid_description(void)
{
 cl_set_cleanup(&cleanup_repository, "./test1");
 cl_git_pass(git_repository_init(&g_repo, "./test1", 0));

 cl_git_rewritefile("./test1/.git/FETCH_HEAD", "49322bb17d3acc9146f98c97d078513228bbf3c0\tnot-for-merge\n");
 cl_git_fail(git_repository_fetchhead_foreach(g_repo, read_noop, ((void*)0)));

 cl_assert(git__prefixcmp(git_error_last()->message, "invalid description") == 0);
}
