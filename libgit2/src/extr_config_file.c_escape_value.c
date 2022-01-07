
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int assert (char const*) ;
 char* git__calloc (int,int) ;
 char* git_buf_detach (int *) ;
 scalar_t__ git_buf_init (int *,size_t) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_putc (int *,char const) ;
 char const* git_config_escaped ;
 char const* git_config_escapes ;
 char* strchr (char const*,char const) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *escape_value(const char *ptr)
{
 git_buf buf;
 size_t len;
 const char *esc;

 assert(ptr);

 len = strlen(ptr);
 if (!len)
  return git__calloc(1, sizeof(char));

 if (git_buf_init(&buf, len) < 0)
  return ((void*)0);

 while (*ptr != '\0') {
  if ((esc = strchr(git_config_escaped, *ptr)) != ((void*)0)) {
   git_buf_putc(&buf, '\\');
   git_buf_putc(&buf, git_config_escapes[esc - git_config_escaped]);
  } else {
   git_buf_putc(&buf, *ptr);
  }
  ptr++;
 }

 if (git_buf_oom(&buf))
  return ((void*)0);

 return git_buf_detach(&buf);
}
