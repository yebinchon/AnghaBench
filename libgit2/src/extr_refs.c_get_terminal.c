
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_REFERENCE ;
 scalar_t__ GIT_REFERENCE_DIRECT ;
 int MAX_NESTING_LEVEL ;
 int git_error_set (int ,char*,int) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char const*) ;
 char* git_reference_symbolic_target (int *) ;
 scalar_t__ git_reference_type (int *) ;

__attribute__((used)) static int get_terminal(git_reference **out, git_repository *repo, const char *ref_name, int nesting)
{
 git_reference *ref;
 int error = 0;

 if (nesting > MAX_NESTING_LEVEL) {
  git_error_set(GIT_ERROR_REFERENCE, "reference chain too deep (%d)", nesting);
  return GIT_ENOTFOUND;
 }


 if ((error = git_reference_lookup(&ref, repo, ref_name)) < 0) {
  *out = ((void*)0);
  return error;
 }

 if (git_reference_type(ref) == GIT_REFERENCE_DIRECT) {
  *out = ref;
  error = 0;
 } else {
  error = get_terminal(out, repo, git_reference_symbolic_target(ref), nesting + 1);
  if (error == GIT_ENOTFOUND && !*out)
   *out = ref;
  else
   git_reference_free(ref);
 }

 return error;
}
