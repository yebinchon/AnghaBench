
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int within_depth(const char *name, int namelen,
   int depth, int max_depth)
{
 const char *cp = name, *cpe = name + namelen;

 while (cp < cpe) {
  if (*cp++ != '/')
   continue;
  depth++;
  if (depth > max_depth)
   return 0;
 }
 return 1;
}
