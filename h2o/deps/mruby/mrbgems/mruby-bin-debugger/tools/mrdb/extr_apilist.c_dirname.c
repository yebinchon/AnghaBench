
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;


 scalar_t__ mrb_malloc (int *,size_t) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,size_t) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static char*
dirname(mrb_state *mrb, const char *path)
{
  size_t len;
  const char *p;
  char *dir;

  if (path == ((void*)0)) {
    return ((void*)0);
  }

  p = strrchr(path, '/');
  len = p != ((void*)0) ? (size_t)(p - path) : strlen(path);

  dir = (char*)mrb_malloc(mrb, len + 1);
  strncpy(dir, path, len);
  dir[len] = '\0';

  return dir;
}
