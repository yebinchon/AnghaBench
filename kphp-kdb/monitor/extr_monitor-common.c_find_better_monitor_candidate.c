
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct proc_data {TYPE_1__* uinfo; } ;
struct TYPE_4__ {scalar_t__ start_utime; } ;
struct TYPE_3__ {int flags; scalar_t__ start_utime; } ;


 int CDATA_PIDS ;
 int CD_MON_PRIO_MASK ;
 int CD_ZOMBIE ;
 TYPE_2__ CDataUserInfo ;
 int assert (struct proc_data*) ;
 int cdata_my_pid ;
 struct proc_data* get_proc_status (int) ;
 int try_reap (int) ;

__attribute__((used)) static int find_better_monitor_candidate (int priority) {
  int i;
  for (i = 0; i < CDATA_PIDS; i++) {
    struct proc_data *PData = get_proc_status (i);
    assert (PData);
    int pflags = PData->uinfo[0].flags;
    if (pflags & CD_ZOMBIE) {
      continue;
    }
    if ((pflags & CD_MON_PRIO_MASK) < priority) {
      continue;
    }
    if ((pflags & CD_MON_PRIO_MASK) == priority) {
      if (PData->uinfo[0].start_utime > CDataUserInfo.start_utime) {
 continue;
      }
      if (PData->uinfo[0].start_utime == CDataUserInfo.start_utime && i >= cdata_my_pid) {
 continue;
      }
    }
    try_reap (i);
    if (!(PData->uinfo[0].flags & CD_ZOMBIE)) {
      return i;
    }
  }
  return -1;
}
