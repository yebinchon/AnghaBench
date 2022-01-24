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
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_external_handler_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static bool
FUNC9 (const char* name,
                          jerry_external_handler_t handler)
{
  jerry_value_t global_obj_val = FUNC2 ();
  jerry_value_t reg_func_val = FUNC0 (handler);
  bool bok = true;

  if (!(FUNC7 (reg_func_val)
        && FUNC5 (reg_func_val)))
  {
    FUNC8 ("!!! create_external_function failed !!!\r\n");
    FUNC3 (reg_func_val);
    FUNC3 (global_obj_val);
    return false;
  }

  jerry_value_t prop_name_val = FUNC1 ((const jerry_char_t *) name);
  jerry_value_t res = FUNC4 (global_obj_val, prop_name_val, reg_func_val);

  FUNC3 (reg_func_val);
  FUNC3 (global_obj_val);
  FUNC3 (prop_name_val);

  if (FUNC6 (res))
  {
    FUNC8 ("!!! register_native_function failed: [%s]\r\n", name);
    FUNC3 (res);
    return false;
  }

  FUNC3 (res);

  return true;
}