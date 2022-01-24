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
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ native_free_cb_call_count ; 
 int /*<<< orphan*/  FUNC2 () ; 

int
FUNC3 (void)
{
  FUNC1 (JERRY_INIT_EMPTY);

  native_free_cb_call_count = 0;
  FUNC2 ();

  FUNC0 ();
}