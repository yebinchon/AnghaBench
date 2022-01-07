
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 char* uv__malloc (size_t) ;

char* uv__strndup(const char* s, size_t n) {
  char* m;
  size_t len = strlen(s);
  if (n < len)
    len = n;
  m = uv__malloc(len + 1);
  if (m == ((void*)0))
    return ((void*)0);
  m[len] = '\0';
  return memcpy(m, s, len);
}
