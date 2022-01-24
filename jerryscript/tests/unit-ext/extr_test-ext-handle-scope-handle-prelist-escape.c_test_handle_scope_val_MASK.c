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
typedef  int /*<<< orphan*/  jerryx_handle_scope ;
typedef  int /*<<< orphan*/  jerry_value_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_GC_PRESSURE_LOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int handle_count ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int native_free_cb_call_count ; 

__attribute__((used)) static void
FUNC5 (void)
{
  jerryx_handle_scope scope;
  FUNC4 (&scope);
  jerry_value_t obj = FUNC1 ();
  (void) obj;

  FUNC2 (JERRY_GC_PRESSURE_LOW);
  FUNC0 (native_free_cb_call_count == (handle_count -1));

  FUNC3 (scope);
}