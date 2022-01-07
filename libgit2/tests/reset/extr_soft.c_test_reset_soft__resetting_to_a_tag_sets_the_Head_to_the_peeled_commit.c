
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_RESET_SOFT ;
 int KNOWN_COMMIT_IN_BARE_REPO ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_oid_streq (int *,int ) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int git_repository_head_detached (int ) ;
 int git_reset (int ,int ,int ,int *) ;
 int git_revparse_single (int *,int ,char*) ;
 int repo ;
 int target ;

void test_reset_soft__resetting_to_a_tag_sets_the_Head_to_the_peeled_commit(void)
{
 git_oid oid;


 cl_git_pass(git_revparse_single(&target, repo, "b25fa35"));

 cl_git_pass(git_reset(repo, target, GIT_RESET_SOFT, ((void*)0)));

 cl_assert(git_repository_head_detached(repo) == 0);
 cl_git_pass(git_reference_name_to_id(&oid, repo, "HEAD"));
 cl_git_pass(git_oid_streq(&oid, KNOWN_COMMIT_IN_BARE_REPO));
}
