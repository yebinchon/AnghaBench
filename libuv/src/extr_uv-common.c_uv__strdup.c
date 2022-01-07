
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 char* uv__malloc (size_t) ;

char* uv__strdup(const char* s) {
  size_t len = strlen(s) + 1;
  char* m = uv__malloc(len);
  if (m == ((void*)0))
    return ((void*)0);
  return memcpy(m, s, len);
}
