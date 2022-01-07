
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;


 int GIT_OBJECT_ANY ;
 int git_object_lookup (int **,int *,int *,int ) ;
 int git_reference_dwim (int **,int *,char const*) ;
 int git_reference_free (int *) ;
 int * git_reference_target (int *) ;
 int retrieve_oid_from_reflog (int *,int *,size_t) ;

__attribute__((used)) static int retrieve_revobject_from_reflog(git_object **out, git_reference **base_ref, git_repository *repo, const char *identifier, size_t position)
{
 git_reference *ref;
 git_oid oid;
 int error = -1;

 if (*base_ref == ((void*)0)) {
  if ((error = git_reference_dwim(&ref, repo, identifier)) < 0)
   return error;
 } else {
  ref = *base_ref;
  *base_ref = ((void*)0);
 }

 if (position == 0) {
  error = git_object_lookup(out, repo, git_reference_target(ref), GIT_OBJECT_ANY);
  goto cleanup;
 }

 if ((error = retrieve_oid_from_reflog(&oid, ref, position)) < 0)
  goto cleanup;

 error = git_object_lookup(out, repo, &oid, GIT_OBJECT_ANY);

cleanup:
 git_reference_free(ref);
 return error;
}
