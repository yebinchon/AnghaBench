
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;

int git__suffixcmp(const char *str, const char *suffix)
{
 size_t a = strlen(str);
 size_t b = strlen(suffix);
 if (a < b)
  return -1;
 return strcmp(str + (a - b), suffix);
}
