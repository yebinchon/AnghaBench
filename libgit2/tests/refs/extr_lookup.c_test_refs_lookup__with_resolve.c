
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 scalar_t__ git_reference_cmp (int *,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_lookup_resolved (int **,int ,char*,int) ;
 int git_reference_resolve (int **,int *) ;

void test_refs_lookup__with_resolve(void)
{
 git_reference *a, *b, *temp;

 cl_git_pass(git_reference_lookup(&temp, g_repo, "HEAD"));
 cl_git_pass(git_reference_resolve(&a, temp));
 git_reference_free(temp);

 cl_git_pass(git_reference_lookup_resolved(&b, g_repo, "HEAD", 5));
 cl_assert(git_reference_cmp(a, b) == 0);
 git_reference_free(b);

 cl_git_pass(git_reference_lookup_resolved(&b, g_repo, "HEAD_TRACKER", 5));
 cl_assert(git_reference_cmp(a, b) == 0);
 git_reference_free(b);

 git_reference_free(a);
}
