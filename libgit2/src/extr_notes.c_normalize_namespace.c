
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_ERROR_CHECK_ALLOC (char*) ;
 char* git__strdup (char const*) ;
 int note_get_default_ref (char**,int *) ;

__attribute__((used)) static int normalize_namespace(char **out, git_repository *repo, const char *notes_ref)
{
 if (notes_ref) {
  *out = git__strdup(notes_ref);
  GIT_ERROR_CHECK_ALLOC(*out);
  return 0;
 }

 return note_get_default_ref(out, repo);
}
