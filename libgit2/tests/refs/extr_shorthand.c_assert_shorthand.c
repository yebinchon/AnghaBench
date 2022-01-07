
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;


 int cl_assert_equal_s (int ,char const*) ;
 int cl_git_pass (int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char const*) ;
 int git_reference_shorthand (int *) ;

void assert_shorthand(git_repository *repo, const char *refname, const char *shorthand)
{
 git_reference *ref;

 cl_git_pass(git_reference_lookup(&ref, repo, refname));
 cl_assert_equal_s(git_reference_shorthand(ref), shorthand);
 git_reference_free(ref);
}
