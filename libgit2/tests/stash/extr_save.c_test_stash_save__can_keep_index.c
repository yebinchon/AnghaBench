
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_STASH_KEEP_INDEX ;
 int GIT_STATUS_CURRENT ;
 int GIT_STATUS_IGNORED ;
 int GIT_STATUS_INDEX_MODIFIED ;
 int GIT_STATUS_WT_NEW ;
 int assert_status (int ,char*,int ) ;
 int cl_git_pass (int ) ;
 int git_stash_save (int *,int ,int ,int *,int ) ;
 int repo ;
 int signature ;
 int stash_tip_oid ;

void test_stash_save__can_keep_index(void)
{
 cl_git_pass(git_stash_save(&stash_tip_oid, repo, signature, ((void*)0), GIT_STASH_KEEP_INDEX));

 assert_status(repo, "what", GIT_STATUS_INDEX_MODIFIED);
 assert_status(repo, "how", GIT_STATUS_INDEX_MODIFIED);
 assert_status(repo, "who", GIT_STATUS_CURRENT);
 assert_status(repo, "when", GIT_STATUS_WT_NEW);
 assert_status(repo, "just.ignore", GIT_STATUS_IGNORED);
}
