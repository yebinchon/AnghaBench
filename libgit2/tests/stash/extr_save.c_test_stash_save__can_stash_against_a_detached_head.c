
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_STASH_DEFAULT ;
 int assert_commit_message_contains (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_repository_detach_head (int ) ;
 int git_stash_save (int *,int ,int ,int *,int ) ;
 int repo ;
 int signature ;
 int stash_tip_oid ;

void test_stash_save__can_stash_against_a_detached_head(void)
{
 git_repository_detach_head(repo);

 cl_git_pass(git_stash_save(&stash_tip_oid, repo, signature, ((void*)0), GIT_STASH_DEFAULT));

 assert_commit_message_contains("refs/stash^2", "index on (no branch): ");
 assert_commit_message_contains("refs/stash", "WIP on (no branch): ");
}
