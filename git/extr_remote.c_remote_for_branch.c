
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct branch {char const* remote_name; } ;



const char *remote_for_branch(struct branch *branch, int *explicit)
{
 if (branch && branch->remote_name) {
  if (explicit)
   *explicit = 1;
  return branch->remote_name;
 }
 if (explicit)
  *explicit = 0;
 return "origin";
}
