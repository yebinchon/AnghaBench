#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 TYPE_1__* LR ; 
 int LRF_BROKEN ; 
 int LRF_LOCK_BINLOG_FAIL ; 
 int LRF_MASTER ; 
 int LRF_READONLY_MODE ; 
 int LRF_TARGET_CR_FAIL ; 
 scalar_t__ binlog_disabled ; 
 int /*<<< orphan*/  broken_master_binlogs ; 
 int /*<<< orphan*/  broken_slave_binlogs ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  conf_master_binlogs ; 
 int /*<<< orphan*/  conf_slave_binlogs ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int local_rbs ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  workers ; 

int FUNC3 (void) {
  int bad = 0, i;
  for (i = 0; i < local_rbs; i++) {
    if (FUNC0 (&LR[i]) < 0) {
      LR[i].flags |= LRF_BROKEN;  // BROKEN
      bad++;
    } else if (!(LR[i].flags & LRF_MASTER) && binlog_disabled) {
      LR[i].flags |= LRF_BROKEN | LRF_READONLY_MODE;
      bad++;
    } else if (!(LR[i].flags & LRF_MASTER) && FUNC2 (&LR[i]) < 0) {
      LR[i].flags |= LRF_BROKEN | LRF_LOCK_BINLOG_FAIL;
      bad++;
    } else if (!(LR[i].flags & LRF_MASTER) && FUNC1 (&LR[i]) < 0) {
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