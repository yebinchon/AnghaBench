
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reference ;
typedef int git_object ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_EINVALIDSPEC ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_put (int *,char const*,size_t) ;
 int object_from_reference (int **,int *) ;
 int revparse_lookup_object (int **,int **,int *,int ) ;

__attribute__((used)) static int ensure_base_rev_loaded(git_object **object, git_reference **reference, const char *spec, size_t identifier_len, git_repository *repo, bool allow_empty_identifier)
{
 int error;
 git_buf identifier = GIT_BUF_INIT;

 if (*object != ((void*)0))
  return 0;

 if (*reference != ((void*)0))
  return object_from_reference(object, *reference);

 if (!allow_empty_identifier && identifier_len == 0)
  return GIT_EINVALIDSPEC;

 if (git_buf_put(&identifier, spec, identifier_len) < 0)
  return -1;

 error = revparse_lookup_object(object, reference, repo, git_buf_cstr(&identifier));
 git_buf_dispose(&identifier);

 return error;
}
