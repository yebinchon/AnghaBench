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
 int /*<<< orphan*/  FUNC0 (double) ; 
 double FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,double) ; 

double FUNC4 (void) {
  if (FUNC2()) {
    return 0;
  }
  double val = FUNC1();
  if (!FUNC0 (val)) {
    FUNC3 (TL_ERROR_BAD_VALUE, "Wrong rating %.6lf", val);
  }
  return val;
}