
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;


 int git_oid_cpy (int *,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup_resolved (int **,int *,char const*,int) ;
 int git_reference_target (int *) ;

int git_reference_name_to_id(
 git_oid *out, git_repository *repo, const char *name)
{
 int error;
 git_reference *ref;

 if ((error = git_reference_lookup_resolved(&ref, repo, name, -1)) < 0)
  return error;

 git_oid_cpy(out, git_reference_target(ref));
 git_reference_free(ref);
 return 0;
}
