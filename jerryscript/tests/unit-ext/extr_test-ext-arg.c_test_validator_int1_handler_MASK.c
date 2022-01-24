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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  jerryx_arg_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_length_t ;
typedef  int int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  JERRYX_ARG_CLAMP ; 
 int /*<<< orphan*/  JERRYX_ARG_COERCE ; 
 int /*<<< orphan*/  JERRYX_ARG_REQUIRED ; 
 int /*<<< orphan*/  JERRYX_ARG_ROUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  validator_int_count ; 

__attribute__((used)) static jerry_value_t
FUNC11 (const jerry_value_t func_obj_val, /**< function object */
                             const jerry_value_t this_val, /**< this value */
                             const jerry_value_t args_p[], /**< arguments list */
                             const jerry_length_t args_cnt) /**< arguments length */
{
  FUNC1 (func_obj_val);
  FUNC1 (this_val);

  uint8_t num0, num1, num2;
  int8_t num3, num4, num5;
  uint32_t num6, num7, num8;
  int32_t num9, num10, num11;

  jerryx_arg_t mapping[] =
  {
    FUNC10 (&num0, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC10 (&num1, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC10 (&num2, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC7 (&num3, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC7 (&num4, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC7 (&num5, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC9 (&num6, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC9 (&num7, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC9 (&num8, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC6 (&num9, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC6 (&num10, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC6 (&num11, JERRYX_ARG_ROUND, JERRYX_ARG_CLAMP, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED)
  };

  jerry_value_t is_ok = FUNC8 (args_p,
                                                   args_cnt,
                                                   mapping,
                                                   FUNC0 (mapping));

  FUNC2 (!FUNC5 (is_ok));
  FUNC2 (num0 == 0);
  FUNC2 (num1 == 255);
  FUNC2 (num2 == 128);
  FUNC2 (num3 == -128);
  FUNC2 (num4 == 127);
  FUNC2 (num5 == -127);
  FUNC2 (num6 == 0);
  FUNC2 (num7 == 4294967295);
  FUNC2 (num8 == 65536);
  FUNC2 (num9 == -2147483648);
  FUNC2 (num10 == 2147483647);
  FUNC2 (num11 == -2147483647);

  FUNC4 (is_ok);
  validator_int_count++;

  return FUNC3 ();
}