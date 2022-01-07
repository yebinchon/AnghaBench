
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;


 int cl_git_pass (int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char const*) ;

void assert_ref_exists(git_repository *repo, const char *name)
{
 git_reference *ref;

 cl_git_pass(git_reference_lookup(&ref, repo, name));
 git_reference_free(ref);
}
