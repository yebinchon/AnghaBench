
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_EINVALIDSPEC ;
 int GIT_ERROR_INVALID ;
 scalar_t__ git__isalpha (char const) ;
 scalar_t__ git__isdigit (char const) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_putc (int *,char) ;
 int git_buf_puts (int *,char const*) ;
 int git_error_set (int ,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int canonicalize_url(git_buf *out, const char *in)
{
 if (in == ((void*)0) || strlen(in) == 0) {
  git_error_set(GIT_ERROR_INVALID, "cannot set empty URL");
  return GIT_EINVALIDSPEC;
 }
 return git_buf_puts(out, in);
}
