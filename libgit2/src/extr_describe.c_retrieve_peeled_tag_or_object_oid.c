
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;


 int GIT_OBJECT_ANY ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 scalar_t__ git_oid_cmp (int *,int *) ;
 int git_oid_cpy (int *,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup_resolved (int **,int *,char const*,int) ;
 int git_reference_peel (int **,int *,int ) ;
 int git_reference_target (int *) ;

__attribute__((used)) static int retrieve_peeled_tag_or_object_oid(
 git_oid *peeled_out,
 git_oid *ref_target_out,
 git_repository *repo,
 const char *refname)
{
 git_reference *ref;
 git_object *peeled = ((void*)0);
 int error;

 if ((error = git_reference_lookup_resolved(&ref, repo, refname, -1)) < 0)
  return error;

 if ((error = git_reference_peel(&peeled, ref, GIT_OBJECT_ANY)) < 0)
  goto cleanup;

 git_oid_cpy(ref_target_out, git_reference_target(ref));
 git_oid_cpy(peeled_out, git_object_id(peeled));

 if (git_oid_cmp(ref_target_out, peeled_out) != 0)
  error = 1;
 else
  error = 0;

cleanup:
 git_reference_free(ref);
 git_object_free(peeled);
 return error;
}
