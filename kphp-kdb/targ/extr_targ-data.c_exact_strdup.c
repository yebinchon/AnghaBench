
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exact_strcpy (char*,char const*,int) ;
 char* zmalloc (int) ;

char *exact_strdup (const char *src, int len) {





  char *res = zmalloc (len + 1);

  exact_strcpy (res, src, len);
  return res;
}
