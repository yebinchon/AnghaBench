
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_OID_HEXSZ ;
 int GIT_RESET_SOFT ;
 int cl_git_pass (int ) ;
 int git_oid_fmt (char*,int *) ;
 int git_oid_streq (int *,char*) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int git_reset (int ,int ,int ,int *) ;
 int git_revparse_single (int *,int ,char*) ;
 int repo ;
 int target ;

void test_reset_soft__resetting_to_the_commit_pointed_at_by_the_Head_does_not_change_the_target_of_the_Head(void)
{
 git_oid oid;
 char raw_head_oid[GIT_OID_HEXSZ + 1];

 cl_git_pass(git_reference_name_to_id(&oid, repo, "HEAD"));
 git_oid_fmt(raw_head_oid, &oid);
 raw_head_oid[GIT_OID_HEXSZ] = '\0';

 cl_git_pass(git_revparse_single(&target, repo, raw_head_oid));

 cl_git_pass(git_reset(repo, target, GIT_RESET_SOFT, ((void*)0)));

 cl_git_pass(git_reference_name_to_id(&oid, repo, "HEAD"));
 cl_git_pass(git_oid_streq(&oid, raw_head_oid));
}
