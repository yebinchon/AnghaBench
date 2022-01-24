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
typedef  int /*<<< orphan*/  val_args ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  size_t uint16_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 char* fn_sys_loop_name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

int FUNC9 (uint32_t ticknow)
{
  jerry_value_t global_obj_val = FUNC3 ();
  jerry_value_t prop_name_val = FUNC2 ((const jerry_char_t *) fn_sys_loop_name);
  jerry_value_t sysloop_func = FUNC4 (global_obj_val, prop_name_val);
  FUNC5 (prop_name_val);

  if (FUNC6 (sysloop_func)) {
    FUNC8 ("Error: '%s' not defined!!!\r\n", fn_sys_loop_name);
    FUNC5 (sysloop_func);
    FUNC5 (global_obj_val);
    return -1;
  }

  if (!FUNC7 (sysloop_func)) {
    FUNC8 ("Error: '%s' is not a function!!!\r\n", fn_sys_loop_name);
    FUNC5 (sysloop_func);
    FUNC5 (global_obj_val);
    return -2;
  }

  jerry_value_t val_args[] = { FUNC1 (ticknow) };
  uint16_t val_argv = sizeof (val_args) / sizeof (jerry_value_t);

  jerry_value_t res = FUNC0 (sysloop_func,
                                           global_obj_val,
                                           val_args,
                                           val_argv);

  for (uint16_t i = 0; i < val_argv; i++) {
    FUNC5 (val_args[i]);
  }

  FUNC5 (sysloop_func);
  FUNC5 (global_obj_val);

  if (FUNC6 (res)) {
    FUNC5 (res);
    return -3;
  }

  FUNC5 (res);

  return 0;
}