
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct proc_user_info {int flags; int updated_at; } ;
struct TYPE_4__ {int flags; int updated_at; } ;
struct TYPE_3__ {struct proc_user_info* uinfo; } ;


 TYPE_2__ CDataUserInfo ;
 TYPE_1__* MyCData ;
 int begin_update_copy (struct proc_user_info*) ;
 int end_update_copy (struct proc_user_info*) ;
 int get_precise_time (int) ;

int cstatus_set (int set_flags, int clear_flags) {
  if (!MyCData) {
    return -1;
  }
  int flags = (CDataUserInfo.flags & ~clear_flags) | set_flags;
  CDataUserInfo.flags = flags;
  CDataUserInfo.updated_at = get_precise_time (1000000);

  int i;
  for (i = 0; i < 2; i++) {
    struct proc_user_info *S = MyCData->uinfo + i;
    begin_update_copy (S);
    S->updated_at = CDataUserInfo.updated_at;
    S->flags = flags;
    end_update_copy (S);
  }

  return flags;
}
