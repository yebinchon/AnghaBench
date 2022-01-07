
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GIT_OBJECT_COMMIT ;
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

void test_object_tag_peel__can_peel_several_nested_tags_to_a_commit(void)
{
 retrieve_tag_from_oid(&tag, repo, "b25fa35b38051e4ae45d4222e795f9df2e43f1d1");

 cl_git_pass(git_tag_peel(&target, tag));
 cl_assert(git_object_type(target) == GIT_OBJECT_COMMIT);
 cl_git_pass(git_oid_streq(git_object_id(target), "e90810b8df3e80c413d903f631643c716887138d"));
}
