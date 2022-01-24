#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
typedef  TYPE_1__ npid_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ lease_pid ; 
 scalar_t__ lease_state ; 
 scalar_t__ lease_stats_cnt ; 
 int /*<<< orphan*/  lease_stats_start_time ; 
 scalar_t__ lease_stats_time ; 
 scalar_t__ lst_off ; 
 int /*<<< orphan*/  lst_start ; 
 int /*<<< orphan*/  precise_now ; 
 int /*<<< orphan*/  rpc_client_ct ; 
 int rpc_lease_target ; 
 double rpc_lease_timeout ; 
 int rpc_main_target ; 
 scalar_t__ rpc_stopped ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4 (npid_t pid, double timeout) {
  if (rpc_main_target == -1) {
    return -1;
  }

  if (lease_state != lst_off) {
    return -1;
  }
  int target_fd = FUNC0 (pid.ip, pid.port, &rpc_client_ct);
  if (target_fd == -1) {
    return -1;
  }
  if (target_fd == rpc_main_target) {
    FUNC3 (0, "can't lease to itself\n");
    return -1;
  }
  if (rpc_stopped) {
    return -1;
  }

  rpc_lease_target = target_fd;
  rpc_lease_timeout = timeout;
  lease_pid = pid;

  lease_stats_cnt = 0;
  lease_stats_start_time = precise_now;
  lease_stats_time = 0;

  FUNC1 (lst_start);
  FUNC2();

  return 0;
}