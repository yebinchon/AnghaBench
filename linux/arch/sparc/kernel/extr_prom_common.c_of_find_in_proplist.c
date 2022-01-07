
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;
 int strlen (char const*) ;

int of_find_in_proplist(const char *list, const char *match, int len)
{
 while (len > 0) {
  int l;

  if (!strcmp(list, match))
   return 1;
  l = strlen(list) + 1;
  list += l;
  len -= l;
 }
 return 0;
}
