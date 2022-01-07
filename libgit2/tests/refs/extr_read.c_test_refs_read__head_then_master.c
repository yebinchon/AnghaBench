
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_HEAD_FILE ;
 int cl_assert_equal_oid (int ,int ) ;
 int cl_git_pass (int ) ;
 int current_head_target ;
 int g_repo ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,int ) ;
 int git_reference_resolve (int **,int *) ;
 int git_reference_target (int *) ;
 int head_tracker_sym_ref_name ;

void test_refs_read__head_then_master(void)
{

 git_reference *reference, *resolved_ref, *comp_base_ref;

 cl_git_pass(git_reference_lookup(&reference, g_repo, head_tracker_sym_ref_name));
 cl_git_pass(git_reference_resolve(&comp_base_ref, reference));
 git_reference_free(reference);

 cl_git_pass(git_reference_lookup(&reference, g_repo, GIT_HEAD_FILE));
 cl_git_pass(git_reference_resolve(&resolved_ref, reference));
 cl_assert_equal_oid(git_reference_target(comp_base_ref), git_reference_target(resolved_ref));
 git_reference_free(reference);
 git_reference_free(resolved_ref);

 cl_git_pass(git_reference_lookup(&reference, g_repo, current_head_target));
 cl_git_pass(git_reference_resolve(&resolved_ref, reference));
 cl_assert_equal_oid(git_reference_target(comp_base_ref), git_reference_target(resolved_ref));
 git_reference_free(reference);
 git_reference_free(resolved_ref);

 git_reference_free(comp_base_ref);
}
