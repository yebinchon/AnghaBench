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
typedef  scalar_t__ jerryx_handle_scope ;
typedef  int /*<<< orphan*/  jerry_value_t ;

/* Variables and functions */
 int JERRYX_SCOPE_PRELIST_SIZE ; 
 int /*<<< orphan*/  JERRY_GC_PRESSURE_LOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 scalar_t__ native_free_cb_call_count ; 

__attribute__((used)) static void
FUNC6 (void)
{
  jerryx_handle_scope scope;
  FUNC5 (&scope);

  for (int idx = 0; idx < 2; ++idx)
  {
    jerry_value_t obj = FUNC1 (JERRYX_SCOPE_PRELIST_SIZE * 2);
    (void) obj;
  }

  FUNC0 (FUNC4 () == scope);

  FUNC2 (JERRY_GC_PRESSURE_LOW);
  FUNC0 (native_free_cb_call_count == 0);

  FUNC3 (scope);
}