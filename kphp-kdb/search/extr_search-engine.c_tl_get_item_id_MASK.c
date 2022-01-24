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
 scalar_t__ FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long long FUNC3 (void) {
  int n = FUNC1 ();
  if (n != 1 && n != 2) {
    FUNC2 ("number of ints in id should be 1 or 2", TL_ERROR_VALUE_NOT_IN_RANGE);
    return -1;
  }
  int owner_id = 0, item_id;
  if (n == 2) {
    owner_id = FUNC1 ();
  }
  item_id = FUNC1 ();
  if (FUNC0 ()) {
    return -1;
  }
  if (item_id <= 0) {
    FUNC2 ("item_id should be positive", TL_ERROR_VALUE_NOT_IN_RANGE);
    return -1;
  }
  return (n == 2) ? ((long long) item_id << 32) + (unsigned) owner_id : item_id;
}