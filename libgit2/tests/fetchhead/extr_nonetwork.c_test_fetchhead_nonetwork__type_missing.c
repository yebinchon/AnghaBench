
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_pass (int ) ;
 int cl_git_rewritefile (char*,char*) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_repository ;
 int g_repo ;
 int git_repository_fetchhead_foreach (int ,int ,int *) ;
 int git_repository_init (int *,char*,int ) ;
 int read_type_missing ;

void test_fetchhead_nonetwork__type_missing(void)
{
 cl_set_cleanup(&cleanup_repository, "./test1");
 cl_git_pass(git_repository_init(&g_repo, "./test1", 0));

 cl_git_rewritefile("./test1/.git/FETCH_HEAD", "49322bb17d3acc9146f98c97d078513228bbf3c0\tnot-for-merge\t'name' of remote_url\n");

 cl_git_pass(git_repository_fetchhead_foreach(g_repo, read_type_missing, ((void*)0)));
}
