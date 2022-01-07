
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 scalar_t__ git_buf_set (int *,char const*,int) ;
 int strlen (char const*) ;

int git_path_basename_r(git_buf *buffer, const char *path)
{
 const char *endp, *startp;
 int len, result;


 if (path == ((void*)0) || *path == '\0') {
  startp = ".";
  len = 1;
  goto Exit;
 }


 endp = path + strlen(path) - 1;
 while (endp > path && *endp == '/')
  endp--;


 if (endp == path && *endp == '/') {
  startp = "/";
  len = 1;
  goto Exit;
 }


 startp = endp;
 while (startp > path && *(startp - 1) != '/')
  startp--;


 len = (int)(endp - startp + 1);

Exit:
 result = len;

 if (buffer != ((void*)0) && git_buf_set(buffer, startp, len) < 0)
  return -1;

 return result;
}
