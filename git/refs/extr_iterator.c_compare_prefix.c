
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int compare_prefix(const char *refname, const char *prefix)
{
 while (*prefix) {
  if (*refname != *prefix)
   return ((unsigned char)*refname < (unsigned char)*prefix) ? -1 : +1;

  refname++;
  prefix++;
 }

 return 0;
}
