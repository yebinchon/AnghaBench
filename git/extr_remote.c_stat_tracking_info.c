
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct branch {int refname; } ;
typedef enum ahead_behind_flags { ____Placeholder_ahead_behind_flags } ahead_behind_flags ;


 char* branch_get_push (struct branch*,int *) ;
 char* branch_get_upstream (struct branch*,int *) ;
 int stat_branch_pair (int ,char const*,int*,int*,int) ;

int stat_tracking_info(struct branch *branch, int *num_ours, int *num_theirs,
         const char **tracking_name, int for_push,
         enum ahead_behind_flags abf)
{
 const char *base;


 base = for_push ? branch_get_push(branch, ((void*)0)) :
  branch_get_upstream(branch, ((void*)0));
 if (tracking_name)
  *tracking_name = base;
 if (!base)
  return -1;

 return stat_branch_pair(branch->refname, base, num_ours, num_theirs, abf);
}
