
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int cl_assert_equal_oid (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_target (int *) ;

void test_refs_read__chomped(void)
{
 git_reference *test, *chomped;

 cl_git_pass(git_reference_lookup(&test, g_repo, "refs/heads/test"));
 cl_git_pass(git_reference_lookup(&chomped, g_repo, "refs/heads/chomped"));
 cl_assert_equal_oid(git_reference_target(test), git_reference_target(chomped));

 git_reference_free(test);
 git_reference_free(chomped);
}
