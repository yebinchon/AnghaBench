
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_RESET_SOFT ;
 int KNOWN_COMMIT_IN_BARE_REPO ;
 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_oid_streq (int *,int ) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int git_repository_head_detached (int ) ;
 int git_reset (int ,int ,int ,int *) ;
 int git_revparse_single (int *,int ,int ) ;
 int repo ;
 int target ;

__attribute__((used)) static void assert_reset_soft(bool should_be_detached)
{
 git_oid oid;

 cl_git_pass(git_reference_name_to_id(&oid, repo, "HEAD"));
 cl_git_fail(git_oid_streq(&oid, KNOWN_COMMIT_IN_BARE_REPO));
 cl_git_pass(git_revparse_single(&target, repo, KNOWN_COMMIT_IN_BARE_REPO));

 cl_assert(git_repository_head_detached(repo) == should_be_detached);

 cl_git_pass(git_reset(repo, target, GIT_RESET_SOFT, ((void*)0)));

 cl_assert(git_repository_head_detached(repo) == should_be_detached);

 cl_git_pass(git_reference_name_to_id(&oid, repo, "HEAD"));
 cl_git_pass(git_oid_streq(&oid, KNOWN_COMMIT_IN_BARE_REPO));
}
