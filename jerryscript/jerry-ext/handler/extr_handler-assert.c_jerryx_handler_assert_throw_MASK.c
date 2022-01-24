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
typedef  int jerry_length_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_ERROR_COMMON ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const) ; 

jerry_value_t
FUNC4 (const jerry_value_t func_obj_val, /**< function object */
                             const jerry_value_t this_p, /**< this arg */
                             const jerry_value_t args_p[], /**< function arguments */
                             const jerry_length_t args_cnt) /**< number of function arguments */
{
  (void) func_obj_val; /* unused */
  (void) this_p; /* unused */

  if (args_cnt == 1
      && FUNC3 (args_p[0])
      && FUNC2 (args_p[0]))
  {
    return FUNC0 (true);
  }

  return FUNC1 (JERRY_ERROR_COMMON, (jerry_char_t *) "assertion failed");
}