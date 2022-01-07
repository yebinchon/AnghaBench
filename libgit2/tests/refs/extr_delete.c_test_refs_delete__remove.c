
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,int ) ;
 int git_reference_remove (int ,int ) ;
 int packed_test_head_name ;

void test_refs_delete__remove(void)
{
 git_reference *ref;



 cl_git_pass(git_reference_lookup(&ref, g_repo, packed_test_head_name));
 git_reference_free(ref);

 cl_git_pass(git_reference_remove(g_repo, packed_test_head_name));

 cl_git_fail(git_reference_lookup(&ref, g_repo, packed_test_head_name));
}
