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
typedef  int /*<<< orphan*/  user_t ;

/* Variables and functions */
 int FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int) ; 
 scalar_t__ write_all_events ; 

int FUNC5 (int user_id, int local_id, int clear_mask, int set_mask, int from_binlog) {
  if (clear_mask != -1 || set_mask != -1) {
    clear_mask &= 0xffff;
    set_mask &= 0xffff;
    FUNC1 (!(clear_mask & set_mask));
  }

  if (FUNC2 (user_id) < 0 || local_id <= 0) {
    return -1;
  }

  int res = FUNC0 (user_id, local_id, clear_mask, set_mask);

  if (from_binlog || (res & 1) || (res >= 0 && write_all_events)) {
    user_t *U = FUNC3 (user_id);
    if (clear_mask < 0) {
      FUNC4 (U, local_id, 0, 0);
    } else if ((clear_mask | set_mask) == 0xffff) {
      FUNC4 (U, local_id, set_mask, 1);
    } else {
      if (clear_mask) {
	FUNC1 (!set_mask);
	FUNC4 (U, local_id, clear_mask, 3);
      } else {
	FUNC1 (!clear_mask);
	FUNC4 (U, local_id, set_mask, 2);
      }
    }
  }

  return res;
}