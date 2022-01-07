
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;


 TYPE_1__* LR ;
 int LRF_BROKEN ;
 int LRF_LOCK_BINLOG_FAIL ;
 int LRF_MASTER ;
 int LRF_READONLY_MODE ;
 int LRF_TARGET_CR_FAIL ;
 scalar_t__ binlog_disabled ;
 int broken_master_binlogs ;
 int broken_slave_binlogs ;
 scalar_t__ check_binlog (TYPE_1__*) ;
 int conf_master_binlogs ;
 int conf_slave_binlogs ;
 scalar_t__ create_slave_target (TYPE_1__*) ;
 int local_rbs ;
 scalar_t__ lock_last_binlog (TYPE_1__*) ;
 int workers ;

int check_binlog_files (void) {
  int bad = 0, i;
  for (i = 0; i < local_rbs; i++) {
    if (check_binlog (&LR[i]) < 0) {
      LR[i].flags |= LRF_BROKEN;
      bad++;
    } else if (!(LR[i].flags & LRF_MASTER) && binlog_disabled) {
      LR[i].flags |= LRF_BROKEN | LRF_READONLY_MODE;
      bad++;
    } else if (!(LR[i].flags & LRF_MASTER) && lock_last_binlog (&LR[i]) < 0) {
      LR[i].flags |= LRF_BROKEN | LRF_LOCK_BINLOG_FAIL;
      bad++;
    } else if (!(LR[i].flags & LRF_MASTER) && create_slave_target (&LR[i]) < 0) {
      LR[i].flags |= LRF_BROKEN | LRF_TARGET_CR_FAIL;
      bad++;
    }
    if (LR[i].flags & LRF_MASTER) {
      conf_master_binlogs++;
      if (LR[i].flags & LRF_BROKEN) {
        broken_master_binlogs++;
      }
    } else if (!workers) {
      conf_slave_binlogs++;
      if (LR[i].flags & LRF_BROKEN) {
        broken_slave_binlogs++;
      }
    }
  }
  return local_rbs - bad;
}
