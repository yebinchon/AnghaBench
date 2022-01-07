
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_vector ;
typedef int git_refspec ;
typedef int git_buf ;
struct TYPE_2__ {scalar_t__ klass; } ;


 int GIT_BUF_INIT ;
 int GIT_CAP_SYMREF ;
 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int GIT_ERROR_NET ;
 scalar_t__ GIT_ERROR_NOMEMORY ;
 int * git__calloc (int,int) ;
 int git__free (int *) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_put (int *,char const*,int) ;
 TYPE_1__* git_error_last () ;
 int git_error_set (int ,char*) ;
 int git_refspec__dispose (int *) ;
 int git_refspec__parse (int *,int ,int) ;
 int git_vector_insert (int *,int *) ;
 char* strchr (char const*,char) ;
 int strlen (int ) ;

__attribute__((used)) static int append_symref(const char **out, git_vector *symrefs, const char *ptr)
{
 int error;
 const char *end;
 git_buf buf = GIT_BUF_INIT;
 git_refspec *mapping = ((void*)0);

 ptr += strlen(GIT_CAP_SYMREF);
 if (*ptr != '=')
  goto on_invalid;

 ptr++;
 if (!(end = strchr(ptr, ' ')) &&
     !(end = strchr(ptr, '\0')))
  goto on_invalid;

 if ((error = git_buf_put(&buf, ptr, end - ptr)) < 0)
  return error;


 mapping = git__calloc(1, sizeof(git_refspec));
 GIT_ERROR_CHECK_ALLOC(mapping);

 error = git_refspec__parse(mapping, git_buf_cstr(&buf), 1);
 git_buf_dispose(&buf);


 if (error < 0) {
  if (git_error_last()->klass != GIT_ERROR_NOMEMORY)
   goto on_invalid;

  git__free(mapping);
  return error;
 }

 if ((error = git_vector_insert(symrefs, mapping)) < 0)
  return error;

 *out = end;
 return 0;

on_invalid:
 git_error_set(GIT_ERROR_NET, "remote sent invalid symref");
 git_refspec__dispose(mapping);
 git__free(mapping);
 return -1;
}
