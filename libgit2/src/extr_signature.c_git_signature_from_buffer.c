
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_signature ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int assert (int) ;
 int * git__calloc (int,int) ;
 int git__free (int *) ;
 int git_signature__parse (int *,char const**,char const*,int *,char) ;
 int strlen (char const*) ;

int git_signature_from_buffer(git_signature **out, const char *buf)
{
 git_signature *sig;
 const char *buf_end;
 int error;

 assert(out && buf);

 *out = ((void*)0);

 sig = git__calloc(1, sizeof(git_signature));
 GIT_ERROR_CHECK_ALLOC(sig);

 buf_end = buf + strlen(buf);
 error = git_signature__parse(sig, &buf, buf_end, ((void*)0), '\0');

 if (error)
  git__free(sig);
 else
  *out = sig;

 return error;
}
