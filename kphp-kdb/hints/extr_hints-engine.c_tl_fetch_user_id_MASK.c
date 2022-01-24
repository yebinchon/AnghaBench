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
 int /*<<< orphan*/  TL_ERROR_BAD_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  log_split_max ; 
 int /*<<< orphan*/  log_split_min ; 
 int /*<<< orphan*/  log_split_mod ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4 (void) {
  if (FUNC1()) {
    return 0;
  }
  int user_id = FUNC2();
  if (!FUNC0 (user_id)) {
    FUNC3 (TL_ERROR_BAD_VALUE, "Wrong server: user_id = %d, log_split_mod = %d, log_split_min = %d, log_split_max = %d", user_id, log_split_mod, log_split_min, log_split_max);
  }

  return user_id;
}