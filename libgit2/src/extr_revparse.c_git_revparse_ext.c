
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_object ;


 int GIT_UNUSED (size_t) ;
 int git_object_free (int *) ;
 int git_reference_free (int *) ;
 int revparse__ext (int **,int **,size_t*,int *,char const*) ;

int git_revparse_ext(
 git_object **object_out,
 git_reference **reference_out,
 git_repository *repo,
 const char *spec)
{
 int error;
 size_t identifier_len;
 git_object *obj = ((void*)0);
 git_reference *ref = ((void*)0);

 if ((error = revparse__ext(&obj, &ref, &identifier_len, repo, spec)) < 0)
  goto cleanup;

 *object_out = obj;
 *reference_out = ref;
 GIT_UNUSED(identifier_len);

 return 0;

cleanup:
 git_object_free(obj);
 git_reference_free(ref);
 return error;
}
