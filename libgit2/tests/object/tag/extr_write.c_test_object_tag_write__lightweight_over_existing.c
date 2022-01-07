
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_object ;


 int GIT_EEXISTS ;
 int GIT_OBJECT_COMMIT ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 scalar_t__ git_oid_cmp (int *,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int git_tag_create_lightweight (int *,int ,char*,int *,int ) ;
 int tag2_id ;
 int tagged_commit ;

void test_object_tag_write__lightweight_over_existing(void)
{

 git_oid target_id, object_id, existing_object_id;
 git_object *target;

 git_oid_fromstr(&target_id, tagged_commit);
 cl_git_pass(git_object_lookup(&target, g_repo, &target_id, GIT_OBJECT_COMMIT));

 cl_assert_equal_i(GIT_EEXISTS, git_tag_create_lightweight(
                                          &object_id,
                                          g_repo,
                                          "e90810b",
                                          target,
                                          0));

 git_oid_fromstr(&existing_object_id, tag2_id);
 cl_assert(git_oid_cmp(&object_id, &existing_object_id) == 0);

 git_object_free(target);
}
