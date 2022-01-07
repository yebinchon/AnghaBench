
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int
cmp_string (const void *pstr1, const void *pstr2)
{
  const char *str1 = *(const char **)pstr1;
  const char *str2 = *(const char **)pstr2;

  return strcmp (str1, str2);
}
