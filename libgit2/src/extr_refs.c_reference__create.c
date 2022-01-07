
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;
typedef int git_repository ;
typedef int git_refname_t ;
typedef int git_reference ;
typedef int git_refdb ;
typedef int git_oid ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int GIT_ERROR_REFERENCE ;
 int GIT_OBJECT_ANY ;
 int assert (int) ;
 int git_error_set (int ,char*) ;
 int git_object__is_valid (int *,int const*,int ) ;
 int git_refdb_write (int *,int *,int,int const*,char const*,int const*,char const*) ;
 int * git_reference__alloc (int ,int const*,int *) ;
 int * git_reference__alloc_symbolic (int ,int ) ;
 int git_reference__enable_symbolic_ref_target_validation ;
 int git_reference_free (int *) ;
 int git_repository_refdb__weakptr (int **,int *) ;
 int reference_normalize_for_repo (int ,int *,char const*,int) ;

__attribute__((used)) static int reference__create(
 git_reference **ref_out,
 git_repository *repo,
 const char *name,
 const git_oid *oid,
 const char *symbolic,
 int force,
 const git_signature *signature,
 const char *log_message,
 const git_oid *old_id,
 const char *old_target)
{
 git_refname_t normalized;
 git_refdb *refdb;
 git_reference *ref = ((void*)0);
 int error = 0;

 assert(repo && name);
 assert(symbolic || signature);

 if (ref_out)
  *ref_out = ((void*)0);

 error = reference_normalize_for_repo(normalized, repo, name, 1);
 if (error < 0)
  return error;

 error = git_repository_refdb__weakptr(&refdb, repo);
 if (error < 0)
  return error;

 if (oid != ((void*)0)) {
  assert(symbolic == ((void*)0));

  if (!git_object__is_valid(repo, oid, GIT_OBJECT_ANY)) {
   git_error_set(GIT_ERROR_REFERENCE,
    "target OID for the reference doesn't exist on the repository");
   return -1;
  }

  ref = git_reference__alloc(normalized, oid, ((void*)0));
 } else {
  git_refname_t normalized_target;

  error = reference_normalize_for_repo(normalized_target, repo,
   symbolic, git_reference__enable_symbolic_ref_target_validation);

  if (error < 0)
   return error;

  ref = git_reference__alloc_symbolic(normalized, normalized_target);
 }

 GIT_ERROR_CHECK_ALLOC(ref);

 if ((error = git_refdb_write(refdb, ref, force, signature, log_message, old_id, old_target)) < 0) {
  git_reference_free(ref);
  return error;
 }

 if (ref_out == ((void*)0))
  git_reference_free(ref);
 else
  *ref_out = ref;

 return 0;
}
