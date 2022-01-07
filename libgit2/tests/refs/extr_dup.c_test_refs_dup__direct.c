
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 scalar_t__ g_repo ;
 scalar_t__ git_reference_cmp (int *,int *) ;
 int git_reference_dup (int **,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,scalar_t__,char*) ;
 scalar_t__ git_reference_owner (int *) ;

void test_refs_dup__direct(void)
{
 git_reference *a, *b;

 cl_git_pass(git_reference_lookup(&a, g_repo, "refs/heads/master"));
 cl_git_pass(git_reference_dup(&b, a));

 cl_assert(git_reference_cmp(a, b) == 0);
 cl_assert(git_reference_owner(b) == g_repo);

 git_reference_free(b);
 git_reference_free(a);
}
