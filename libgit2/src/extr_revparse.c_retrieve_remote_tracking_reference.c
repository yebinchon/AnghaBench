
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;


 int GIT_EINVALIDSPEC ;
 int git_branch_upstream (int **,int *) ;
 int git_reference_dwim (int **,int *,char const*) ;
 int git_reference_free (int *) ;
 int git_reference_is_branch (int *) ;

__attribute__((used)) static int retrieve_remote_tracking_reference(git_reference **base_ref, const char *identifier, git_repository *repo)
{
 git_reference *tracking, *ref;
 int error = -1;

 if (*base_ref == ((void*)0)) {
  if ((error = git_reference_dwim(&ref, repo, identifier)) < 0)
   return error;
 } else {
  ref = *base_ref;
  *base_ref = ((void*)0);
 }

 if (!git_reference_is_branch(ref)) {
  error = GIT_EINVALIDSPEC;
  goto cleanup;
 }

 if ((error = git_branch_upstream(&tracking, ref)) < 0)
  goto cleanup;

 *base_ref = tracking;

cleanup:
 git_reference_free(ref);
 return error;
}
