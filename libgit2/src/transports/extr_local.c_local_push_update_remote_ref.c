
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;


 int GIT_ENOTFOUND ;
 int git_oid_is_zero (int *) ;
 int git_reference_create (int *,int *,char const*,int *,int,int *) ;
 int git_reference_delete (int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char const*) ;

__attribute__((used)) static int local_push_update_remote_ref(
 git_repository *remote_repo,
 const char *lref,
 const char *rref,
 git_oid *loid,
 git_oid *roid)
{
 int error;
 git_reference *remote_ref = ((void*)0);


 if (lref[0] != '\0') {

  error = git_reference_create(((void*)0), remote_repo, rref, loid,
          !git_oid_is_zero(roid), ((void*)0));
 } else {

  if ((error = git_reference_lookup(&remote_ref, remote_repo, rref)) < 0) {
   if (error == GIT_ENOTFOUND)
    error = 0;
   return error;
  }

  error = git_reference_delete(remote_ref);
  git_reference_free(remote_ref);
 }

 return error;
}
