
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_reference ;
struct TYPE_7__ {scalar_t__ ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_SYMREF ;
 int git__free (char*) ;
 scalar_t__ git__strncmp (scalar_t__,int ,scalar_t__) ;
 int git_buf_consume (TYPE_1__*,scalar_t__) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_rtrim (TYPE_1__*) ;
 int git_futils_readbuffer (TYPE_1__*,char const*) ;
 char* git_path_basename (char const*) ;
 int * git_reference__alloc_symbolic (char*,scalar_t__) ;
 int git_reference_lookup (int **,int *,scalar_t__) ;
 scalar_t__ strlen (int ) ;

int git_reference__read_head(
 git_reference **out,
 git_repository *repo,
 const char *path)
{
 git_buf reference = GIT_BUF_INIT;
 char *name = ((void*)0);
 int error;

 if ((error = git_futils_readbuffer(&reference, path)) < 0)
  goto out;
 git_buf_rtrim(&reference);

 if (git__strncmp(reference.ptr, GIT_SYMREF, strlen(GIT_SYMREF)) == 0) {
  git_buf_consume(&reference, reference.ptr + strlen(GIT_SYMREF));

  name = git_path_basename(path);

  if ((*out = git_reference__alloc_symbolic(name, reference.ptr)) == ((void*)0)) {
   error = -1;
   goto out;
  }
 } else {
  if ((error = git_reference_lookup(out, repo, reference.ptr)) < 0)
   goto out;
 }

out:
 git__free(name);
 git_buf_dispose(&reference);

 return error;
}
