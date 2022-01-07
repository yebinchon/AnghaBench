
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct branch {char const* pushremote_name; } ;


 char const* pushremote_name ;
 char const* remote_for_branch (struct branch*,int*) ;

const char *pushremote_for_branch(struct branch *branch, int *explicit)
{
 if (branch && branch->pushremote_name) {
  if (explicit)
   *explicit = 1;
  return branch->pushremote_name;
 }
 if (pushremote_name) {
  if (explicit)
   *explicit = 1;
  return pushremote_name;
 }
 return remote_for_branch(branch, explicit);
}
