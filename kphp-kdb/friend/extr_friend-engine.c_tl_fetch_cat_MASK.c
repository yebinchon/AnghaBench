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
 scalar_t__ FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC3 (int set) {
  if (FUNC0 ()) {
    return -1;
  }
  int cat = FUNC1 ();
  if (set) {
    if (cat <= 0 || cat >= 31) {
      FUNC2 (TL_ERROR_BAD_VALUE, "Set can be performed on cat in range 1..30. Cat = %d", cat);
      return -1;
    }
  } else {
    if (cat < 0 || cat >= 31) {
      FUNC2 (TL_ERROR_BAD_VALUE, "Get can be performed on cat in range 0..30. Cat = %d", cat);
      return -1;
    }
  }
  return cat;
}