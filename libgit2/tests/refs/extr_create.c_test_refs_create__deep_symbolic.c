
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_oid ;


 int cl_assert_equal_oid (int *,int ) ;
 int cl_git_pass (int ) ;
 int current_head_target ;
 int current_master_tip ;
 int g_repo ;
 int git_oid_fromstr (int *,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char const*) ;
 int git_reference_resolve (int **,int *) ;
 int git_reference_symbolic_create (int **,int ,char const*,int ,int ,int *) ;
 int git_reference_target (int *) ;

void test_refs_create__deep_symbolic(void)
{

 git_reference *new_reference, *looked_up_ref, *resolved_ref;
 git_oid id;

 const char *new_head_tracker = "deep/rooted/tracker";

 git_oid_fromstr(&id, current_master_tip);

 cl_git_pass(git_reference_symbolic_create(&new_reference, g_repo, new_head_tracker, current_head_target, 0, ((void*)0)));
 cl_git_pass(git_reference_lookup(&looked_up_ref, g_repo, new_head_tracker));
 cl_git_pass(git_reference_resolve(&resolved_ref, looked_up_ref));
 cl_assert_equal_oid(&id, git_reference_target(resolved_ref));

 git_reference_free(new_reference);
 git_reference_free(looked_up_ref);
 git_reference_free(resolved_ref);
}
