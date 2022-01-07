
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FETCH_HEAD_WILDCARD_DATA ;
 int FETCH_HEAD_WILDCARD_DATA2 ;
 int cl_git_pass (int ) ;
 int fetchhead_test_clone () ;
 int fetchhead_test_fetch (int *,int ) ;
 int g_repo ;
 int git_tag_delete (int ,char*) ;

void test_online_fetchhead__wildcard_spec(void)
{
 fetchhead_test_clone();
 fetchhead_test_fetch(((void*)0), FETCH_HEAD_WILDCARD_DATA2);
 cl_git_pass(git_tag_delete(g_repo, "annotated_tag"));
 cl_git_pass(git_tag_delete(g_repo, "blob"));
 cl_git_pass(git_tag_delete(g_repo, "commit_tree"));
 cl_git_pass(git_tag_delete(g_repo, "nearly-dangling"));
 fetchhead_test_fetch(((void*)0), FETCH_HEAD_WILDCARD_DATA);
}
