
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int GIT_EEXISTS ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,int ) ;
 int git_reference_rename (int **,int *,int ,int ,int *) ;
 int packed_head_name ;
 int packed_test_head_name ;

void test_refs_rename__propagate_eexists(void)
{
 git_reference *ref, *new_ref;

 cl_git_pass(git_reference_lookup(&ref, g_repo, packed_head_name));

 cl_assert_equal_i(GIT_EEXISTS, git_reference_rename(&new_ref, ref, packed_test_head_name, 0, ((void*)0)));

 git_reference_free(ref);
}
