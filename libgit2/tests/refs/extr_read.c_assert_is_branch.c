
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_reference_free (int *) ;
 int git_reference_is_branch (int *) ;
 int git_reference_lookup (int **,int ,char const*) ;

__attribute__((used)) static void assert_is_branch(const char *name, bool expected_branchness)
{
 git_reference *reference;
 cl_git_pass(git_reference_lookup(&reference, g_repo, name));
 cl_assert_equal_i(expected_branchness, git_reference_is_branch(reference));
 git_reference_free(reference);
}
