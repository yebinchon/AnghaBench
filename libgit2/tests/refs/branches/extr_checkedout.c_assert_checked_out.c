
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_branch_is_checked_out (int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char const*) ;

__attribute__((used)) static void assert_checked_out(git_repository *repo, const char *branch, int checked_out)
{
 git_reference *ref;

 cl_git_pass(git_reference_lookup(&ref, repo, branch));
 cl_assert(git_branch_is_checked_out(ref) == checked_out);

 git_reference_free(ref);
}
