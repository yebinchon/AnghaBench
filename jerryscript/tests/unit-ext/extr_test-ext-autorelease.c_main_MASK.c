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
 int /*<<< orphan*/  JERRY_GC_PRESSURE_HIGH ; 
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int native_free_cb_call_count ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5 (void)
{
  FUNC3 (JERRY_INIT_EMPTY);

  native_free_cb_call_count = 0;
  FUNC4 ();
  FUNC2 (JERRY_GC_PRESSURE_HIGH);
  FUNC0 (native_free_cb_call_count == 1);

  FUNC1 ();
}