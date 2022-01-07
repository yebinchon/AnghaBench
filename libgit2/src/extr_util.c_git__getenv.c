
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_ENOTFOUND ;
 char* getenv (char const*) ;
 int git_buf_clear (int *) ;
 int git_buf_puts (int *,char const*) ;

int git__getenv(git_buf *out, const char *name)
{
 const char *val = getenv(name);

 git_buf_clear(out);

 if (!val)
  return GIT_ENOTFOUND;

 return git_buf_puts(out, val);
}
