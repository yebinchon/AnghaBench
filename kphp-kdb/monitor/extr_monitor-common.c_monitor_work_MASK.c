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
struct TYPE_3__ {scalar_t__ monitor_pid; scalar_t__ rpc_pending; scalar_t__ rescan_binlog_table; scalar_t__ rescan_pid_table; } ;
struct TYPE_4__ {TYPE_1__ e_hdr; } ;

/* Variables and functions */
 TYPE_2__* CData ; 
 int /*<<< orphan*/  am_monitor ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ cdata_my_pid ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 unsigned long long last_check_time ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6 (void) {
  if (!am_monitor) {
    // maybe : try to do some RPC, try to reap old monitor, ...
    return 0;
  }
  FUNC0 (CData->e_hdr.monitor_pid == cdata_my_pid);
  if (CData->e_hdr.rescan_pid_table) {
    FUNC5 ();
  }
  if (CData->e_hdr.rescan_binlog_table) {
    FUNC4 ();
  }
  if (CData->e_hdr.rpc_pending) {
    CData->e_hdr.rpc_pending = 0;
    FUNC1 ();
  }
  if ((unsigned long long) FUNC2 (1000000) - last_check_time > (1 << 28)) {
    if (FUNC3 () > 0) {
      FUNC5 ();
    }
  }
  return 1;
}