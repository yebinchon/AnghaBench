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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC2 (void) {
  int x = FUNC0 ();
  if (x != 0 && x != 100) {
    FUNC1 (TL_ERROR_VALUE_NOT_IN_RANGE, "max_views should be 0 or 100 (%d presented)", x);
  }
  return x;
}