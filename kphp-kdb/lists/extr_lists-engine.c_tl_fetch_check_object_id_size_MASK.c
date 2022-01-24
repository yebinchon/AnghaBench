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
 int object_id_ints ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 

int FUNC2 (void) {
  int x = FUNC0 ();
  if (x != object_id_ints) {
    FUNC1 (TL_ERROR_BAD_VALUE, "Wrong number of ints in object_id: should be %d, present %d", object_id_ints, x);
    return -1;
  }
  return 0;
}