
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;


 int GIT_REFERENCE_DIRECT ;
 int cl_assert (int) ;
 int cl_assert_equal_oid (int *,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_oid_cpy (int *,int ) ;
 int git_reference_create (int **,int ,int ,int *,int,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,int ) ;
 int git_reference_symbolic_create (int **,int ,int ,int ,int ,int *) ;
 int git_reference_target (int *) ;
 int git_reference_type (int *) ;
 int ref_master_name ;
 int ref_name ;

void test_refs_overwrite__symbolic_with_object_id(void)
{

 git_reference *ref;
 git_oid id;

 cl_git_pass(git_reference_lookup(&ref, g_repo, ref_master_name));
 cl_assert(git_reference_type(ref) & GIT_REFERENCE_DIRECT);
 git_oid_cpy(&id, git_reference_target(ref));
 git_reference_free(ref);


 cl_git_pass(git_reference_symbolic_create(&ref, g_repo, ref_name, ref_master_name, 0, ((void*)0)));
 git_reference_free(ref);

 cl_git_fail(git_reference_create(&ref, g_repo, ref_name, &id, 0, ((void*)0)));
 cl_git_pass(git_reference_create(&ref, g_repo, ref_name, &id, 1, ((void*)0)));
 git_reference_free(ref);


 cl_git_pass(git_reference_lookup(&ref, g_repo, ref_name));
 cl_assert(git_reference_type(ref) & GIT_REFERENCE_DIRECT);
 cl_assert_equal_oid(&id, git_reference_target(ref));

 git_reference_free(ref);
}
