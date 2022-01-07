
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t git_path_common_dirlen(const char *one, const char *two)
{
 const char *p, *q, *dirsep = ((void*)0);

 for (p = one, q = two; *p && *q; p++, q++) {
  if (*p == '/' && *q == '/')
   dirsep = p;
  else if (*p != *q)
   break;
 }

 return dirsep ? (dirsep - one) + 1 : 0;
}
