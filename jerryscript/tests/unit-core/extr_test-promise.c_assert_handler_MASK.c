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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  count_in_assert ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static jerry_value_t
FUNC5 (const jerry_value_t func_obj_val, /**< function object */
                const jerry_value_t this_val, /**< this arg */
                const jerry_value_t args_p[], /**< function arguments */
                const jerry_length_t args_cnt) /**< number of function arguments */
{
  FUNC0 (func_obj_val);
  FUNC0 (this_val);

  count_in_assert++;

  if (args_cnt == 1
      && FUNC4 (args_p[0])
      && FUNC3 (args_p[0]))
  {
    return FUNC2 (true);
  }
  else
  {
    FUNC1 (false);
  }
}