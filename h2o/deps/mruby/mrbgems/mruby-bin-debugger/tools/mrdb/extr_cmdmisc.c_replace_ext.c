
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;


 int memset (char*,char,size_t) ;
 scalar_t__ mrb_malloc (int *,size_t) ;
 int strcat (char*,char const*) ;
 int * strchr (char const*,char) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,size_t) ;
 char* strrchr (char const*,char) ;

char*
replace_ext(mrb_state *mrb, const char *filename, const char *ext)
{
  size_t len;
  const char *p;
  char *s;

  if (filename == ((void*)0)) {
    return ((void*)0);
  }

  if ((p = strrchr(filename, '.')) != ((void*)0) && strchr(p, '/') == ((void*)0)) {
    len = p - filename;
  }
  else {
    len = strlen(filename);
  }

  s = (char*)mrb_malloc(mrb, len + strlen(ext) + 1);
  memset(s, '\0', len + strlen(ext) + 1);
  strncpy(s, filename, len);
  strcat(s, ext);

  return s;
}
