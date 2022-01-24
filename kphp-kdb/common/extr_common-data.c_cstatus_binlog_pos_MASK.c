#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct proc_user_info {long long binlog_pos; int flags; int /*<<< orphan*/  updated_at; } ;
struct TYPE_4__ {long long binlog_pos; int flags; int /*<<< orphan*/  updated_at; } ;
struct TYPE_3__ {struct proc_user_info* uinfo; } ;

/* Variables and functions */
 int CD_BINLOG_R ; 
 int CD_BINLOG_W ; 
 TYPE_2__ CDataUserInfo ; 
 TYPE_1__* MyCData ; 
 int /*<<< orphan*/  FUNC0 (struct proc_user_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc_user_info*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3 (long long binlog_pos, int binlog_read_only) {
  if (!MyCData) {
    return -1;
  }
  CDataUserInfo.binlog_pos = binlog_pos;
  int flags = (CDataUserInfo.flags & ~(CD_BINLOG_R | CD_BINLOG_W)) | (binlog_read_only ? CD_BINLOG_R : (binlog_pos ? CD_BINLOG_W : 0));
  CDataUserInfo.flags = flags;
  CDataUserInfo.updated_at = FUNC2 (1000000);

  int i;
  for (i = 0; i < 2; i++) {
    struct proc_user_info *S = MyCData->uinfo + i;
    FUNC0 (S);
    S->binlog_pos = binlog_pos;
    S->updated_at = CDataUserInfo.updated_at;
    S->flags = flags;
    FUNC1 (S);
  }

  return 1;
}