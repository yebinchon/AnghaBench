
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_BUF_INIT ;
 char* git_buf_detach (int *) ;
 scalar_t__ git_buf_printf (int *,char*,int,char const*) ;
 int git_odb__error_notfound (char*,int *,int ) ;
 size_t strlen (char const*) ;

int git_packfile__name(char **out, const char *path)
{
 size_t path_len;
 git_buf buf = GIT_BUF_INIT;

 path_len = strlen(path);

 if (path_len < strlen(".idx"))
  return git_odb__error_notfound("invalid packfile path", ((void*)0), 0);

 if (git_buf_printf(&buf, "%.*s.pack", (int)(path_len - strlen(".idx")), path) < 0)
  return -1;

 *out = git_buf_detach(&buf);
 return 0;
}
