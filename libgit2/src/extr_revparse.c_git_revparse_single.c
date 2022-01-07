
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_object ;


 int git_object_free (int *) ;
 int git_reference_free (int *) ;
 int git_revparse_ext (int **,int **,int *,char const*) ;

int git_revparse_single(git_object **out, git_repository *repo, const char *spec)
{
 int error;
 git_object *obj = ((void*)0);
 git_reference *ref = ((void*)0);

 *out = ((void*)0);

 if ((error = git_revparse_ext(&obj, &ref, repo, spec)) < 0)
  goto cleanup;

 git_reference_free(ref);

 *out = obj;

 return 0;

cleanup:
 git_object_free(obj);
 git_reference_free(ref);
 return error;
}
