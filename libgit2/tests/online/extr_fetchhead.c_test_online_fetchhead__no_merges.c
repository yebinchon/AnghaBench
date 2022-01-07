
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;


 int FETCH_HEAD_NO_MERGE_DATA ;
 int FETCH_HEAD_NO_MERGE_DATA2 ;
 int FETCH_HEAD_NO_MERGE_DATA3 ;
 int cl_git_pass (int ) ;
 int fetchhead_test_clone () ;
 int fetchhead_test_fetch (int *,int ) ;
 int g_repo ;
 int git_config_delete_entry (int *,char*) ;
 int git_config_free (int *) ;
 int git_repository_config (int **,int ) ;
 int git_tag_delete (int ,char*) ;

void test_online_fetchhead__no_merges(void)
{
 git_config *config;

 fetchhead_test_clone();

 cl_git_pass(git_repository_config(&config, g_repo));
 cl_git_pass(git_config_delete_entry(config, "branch.master.remote"));
 cl_git_pass(git_config_delete_entry(config, "branch.master.merge"));
 git_config_free(config);

 fetchhead_test_fetch(((void*)0), FETCH_HEAD_NO_MERGE_DATA2);
 cl_git_pass(git_tag_delete(g_repo, "annotated_tag"));
 cl_git_pass(git_tag_delete(g_repo, "blob"));
 cl_git_pass(git_tag_delete(g_repo, "commit_tree"));
 cl_git_pass(git_tag_delete(g_repo, "nearly-dangling"));
 fetchhead_test_fetch(((void*)0), FETCH_HEAD_NO_MERGE_DATA);
 cl_git_pass(git_tag_delete(g_repo, "commit_tree"));
 fetchhead_test_fetch(((void*)0), FETCH_HEAD_NO_MERGE_DATA3);
}
