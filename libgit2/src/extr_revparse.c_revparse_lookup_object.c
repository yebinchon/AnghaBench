
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_object ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_REFERENCE ;
 int GIT_OBJECT_ANY ;
 scalar_t__ GIT_OID_HEXSZ ;
 int git_error_set (int ,char*,char const*) ;
 int git_object_lookup (int **,int *,int ,int ) ;
 int git_reference_dwim (int **,int *,char const*) ;
 int git_reference_target (int *) ;
 int maybe_abbrev (int **,int *,char const*) ;
 int maybe_describe (int **,int *,char const*) ;
 int maybe_sha (int **,int *,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int revparse_lookup_object(
 git_object **object_out,
 git_reference **reference_out,
 git_repository *repo,
 const char *spec)
{
 int error;
 git_reference *ref;

 if ((error = maybe_sha(object_out, repo, spec)) != GIT_ENOTFOUND)
  return error;

 error = git_reference_dwim(&ref, repo, spec);
 if (!error) {

  error = git_object_lookup(
   object_out, repo, git_reference_target(ref), GIT_OBJECT_ANY);

  if (!error)
   *reference_out = ref;

  return error;
 }

 if (error != GIT_ENOTFOUND)
  return error;

 if ((strlen(spec) < GIT_OID_HEXSZ) &&
  ((error = maybe_abbrev(object_out, repo, spec)) != GIT_ENOTFOUND))
   return error;

 if ((error = maybe_describe(object_out, repo, spec)) != GIT_ENOTFOUND)
  return error;

 git_error_set(GIT_ERROR_REFERENCE, "revspec '%s' not found", spec);
 return GIT_ENOTFOUND;
}
