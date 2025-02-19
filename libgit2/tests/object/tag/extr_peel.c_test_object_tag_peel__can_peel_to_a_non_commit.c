
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GIT_OBJECT_BLOB ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_object_id (int ) ;
 scalar_t__ git_object_type (int ) ;
 int git_oid_streq (int ,char*) ;
 int git_tag_peel (int *,int ) ;
 int repo ;
 int retrieve_tag_from_oid (int *,int ,char*) ;
 int tag ;
 int target ;

void test_object_tag_peel__can_peel_to_a_non_commit(void)
{
 retrieve_tag_from_oid(&tag, repo, "521d87c1ec3aef9824daf6d96cc0ae3710766d91");

 cl_git_pass(git_tag_peel(&target, tag));
 cl_assert(git_object_type(target) == GIT_OBJECT_BLOB);
 cl_git_pass(git_oid_streq(git_object_id(target), "1385f264afb75a56a5bec74243be9b367ba4ca08"));
}
