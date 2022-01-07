
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;
typedef scalar_t__ GETGROUPS_T ;


 int FALSE ;
 int MRB_MAX_GROUPS ;
 int TRUE ;
 scalar_t__ getegid () ;
 scalar_t__ getgid () ;
 int getgroups (int,scalar_t__*) ;
 int mrb_free (int *,scalar_t__*) ;
 scalar_t__ mrb_malloc (int *,int) ;

__attribute__((used)) static int
mrb_group_member(mrb_state *mrb, GETGROUPS_T gid)
{

  return FALSE;
}
