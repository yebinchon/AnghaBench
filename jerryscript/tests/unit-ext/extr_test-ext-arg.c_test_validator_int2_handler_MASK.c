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
typedef  int /*<<< orphan*/  jerryx_arg_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_length_t ;
typedef  int int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  JERRYX_ARG_CEIL ; 
 int /*<<< orphan*/  JERRYX_ARG_CLAMP ; 
 int /*<<< orphan*/  JERRYX_ARG_COERCE ; 
 int /*<<< orphan*/  JERRYX_ARG_FLOOR ; 
 int /*<<< orphan*/  JERRYX_ARG_NO_CLAMP ; 
 int /*<<< orphan*/  JERRYX_ARG_REQUIRED ; 
 int /*<<< orphan*/  JERRYX_ARG_ROUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  validator_int_count ; 

__attribute__((used)) static jerry_value_t
FUNC8 (const jerry_value_t func_obj_val, /**< function object */
                             const jerry_value_t this_val, /**< this value */
                             const jerry_value_t args_p[], /**< arguments list */
                             const jerry_length_t args_cnt) /**< arguments length */
{
  FUNC1 (func_obj_val);
  FUNC1 (this_val);

  int8_t num0, num1, num2, num3, num4, num5, num6, num7, num8, num9;
  num8 = 123;
  num9 = 123;

  jerryx_arg_t mapping[] =
  {
    FUNC6 (&num0, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC6 (&num1, JERRYX_ARG_FLOOR, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC6 (&num2, JERRYX_ARG_CEIL, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC6 (&num3, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC6 (&num4, JERRYX_ARG_FLOOR, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC6 (&num5, JERRYX_ARG_CEIL, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC6 (&num6, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC6 (&num7, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC6 (&num8, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC6 (&num9, JERRYX_ARG_ROUND, JERRYX_ARG_NO_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
  };

  jerry_value_t is_ok = FUNC7 (args_p,
                                                   args_cnt,
                                                   mapping,
                                                   FUNC0 (mapping));

  FUNC2 (FUNC5 (is_ok));
  FUNC2 (num0 == -2);
  FUNC2 (num1 == -2);
  FUNC2 (num2 == -1);
  FUNC2 (num3 == 2);
  FUNC2 (num4 == 1);
  FUNC2 (num5 == 2);
  FUNC2 (num6 == 127);
  FUNC2 (num7 == -128);
  FUNC2 (num8 == 127);
  FUNC2 (num9 == 123);

  FUNC4 (is_ok);
  validator_int_count++;

  return FUNC3 ();
}