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
 int /*<<< orphan*/  lst_finish ; 
 int /*<<< orphan*/  lst_on ; 
 scalar_t__ lst_start ; 
 scalar_t__ rpc_stopped ; 

int FUNC3 (void) {
  FUNC0 (lease_state == lst_start);
  if (FUNC1()) {
    return 0;
  }
  FUNC2 (lst_on);
  lease_ready_flag = 1;
  if (rpc_stopped) {
    FUNC2 (lst_finish);
  }
  return 1;
}