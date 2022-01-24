#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int lease_ready_flag ; 
 scalar_t__ lease_state ; 
 scalar_t__ lst_finish ; 
 int /*<<< orphan*/  lst_off ; 
 int /*<<< orphan*/  rpc_lease_target ; 
 int /*<<< orphan*/  rpc_main_target ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5 (void) {
  FUNC0 (lease_state == lst_finish);
  if (FUNC1()) {
    return 0;
  }
  FUNC4 (rpc_lease_target);
  FUNC3 (rpc_main_target);
  FUNC2 (lst_off);
  lease_ready_flag = 1;
  return 1;
}