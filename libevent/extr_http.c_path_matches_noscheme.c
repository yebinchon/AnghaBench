
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
path_matches_noscheme(const char *cp)
{
 while (*cp) {
  if (*cp == ':')
   return 0;
  else if (*cp == '/')
   return 1;
  ++cp;
 }
 return 1;
}
