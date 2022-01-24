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
 int /*<<< orphan*/  TL_ERROR_VALUE_NOT_IN_RANGE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  log_split_max ; 
 int /*<<< orphan*/  log_split_min ; 
 int /*<<< orphan*/  log_split_mod ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC3 (void) {
  int x = FUNC1 ();
  if (x > 0) {
    if (FUNC0 (x) < 0) {
      FUNC2 (TL_ERROR_VALUE_NOT_IN_RANGE, "user_id is not from this engine: log_split_min = %d, log_split_max = %d, log_split_mod = %d, uid = %d", log_split_min, log_split_max, log_split_mod, x);
      x = -1;
    }
  }
  return x;
}