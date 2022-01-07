
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;


 int GIT_OBJECT_COMMIT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 scalar_t__ git_oid_cmp (int *,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int * git_reference_target (int *) ;
 int git_tag_create_lightweight (int *,int ,char*,int *,int ) ;
 int git_tag_delete (int ,char*) ;
 int tagged_commit ;

void test_object_tag_write__lightweight(void)
{

 git_oid target_id, object_id;
 git_reference *ref_tag;
 git_object *target;

 git_oid_fromstr(&target_id, tagged_commit);
 cl_git_pass(git_object_lookup(&target, g_repo, &target_id, GIT_OBJECT_COMMIT));

 cl_git_pass(git_tag_create_lightweight(
                                          &object_id,
                                          g_repo,
                                          "light-tag",
                                          target,
                                          0));

 git_object_free(target);

 cl_assert(git_oid_cmp(&object_id, &target_id) == 0);

 cl_git_pass(git_reference_lookup(&ref_tag, g_repo, "refs/tags/light-tag"));
 cl_assert(git_oid_cmp(git_reference_target(ref_tag), &target_id) == 0);

 cl_git_pass(git_tag_delete(g_repo, "light-tag"));

 git_reference_free(ref_tag);
}
