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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  log_split_max ; 
 int /*<<< orphan*/  log_split_min ; 
 int /*<<< orphan*/  log_split_mod ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3 (void) {
  int uid = FUNC1 ();
  if (!uid || FUNC0 (uid) < 0) {
    FUNC2 (TL_ERROR_BAD_VALUE, "Wrong server: user_id = %d, log_split_mod = %d, log_split_min = %d, log_split_max = %d", uid, log_split_mod, log_split_min, log_split_max);
    return -1;
  }
  return uid;
}