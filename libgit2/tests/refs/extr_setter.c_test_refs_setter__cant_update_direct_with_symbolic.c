
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;


 scalar_t__ GIT_REFERENCE_DIRECT ;
 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_oid_cpy (int *,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,int ) ;
 int git_reference_symbolic_set_target (int **,int *,int ,int *) ;
 int git_reference_target (int *) ;
 scalar_t__ git_reference_type (int *) ;
 int ref_master_name ;
 int ref_name ;

void test_refs_setter__cant_update_direct_with_symbolic(void)
{

 git_reference *ref, *new;
 git_oid id;

 cl_git_pass(git_reference_lookup(&ref, g_repo, ref_master_name));
 cl_assert(git_reference_type(ref) == GIT_REFERENCE_DIRECT);
 git_oid_cpy(&id, git_reference_target(ref));

 cl_git_fail(git_reference_symbolic_set_target(&new, ref, ref_name, ((void*)0)));

 git_reference_free(ref);
}
