#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jerryx_arg_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_length_t ;
struct TYPE_4__ {int bool_field; double double_field; } ;
struct TYPE_5__ {scalar_t__ type_of_value; TYPE_1__ value; } ;
typedef  TYPE_2__ double_or_bool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ BOOL_VALUE ; 
 scalar_t__ DOUBLE_VALUE ; 
 int /*<<< orphan*/  JERRYX_ARG_NO_COERCE ; 
 int /*<<< orphan*/  JERRYX_ARG_REQUIRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static jerry_value_t
FUNC8 (const jerry_value_t func_obj_val, /**< function object */
                                const jerry_value_t this_val, /**< this value */
                                const jerry_value_t args_p[], /**< arguments list */
                                const jerry_length_t args_cnt) /**< arguments length */
{
  FUNC1 (func_obj_val);
  FUNC1 (this_val);

  double_or_bool_t arg1;
  double_or_bool_t arg2;

  jerryx_arg_t item_mapping[] =
  {
    FUNC6 (&arg1, JERRYX_ARG_NO_COERCE, JERRYX_ARG_REQUIRED, 0),
    FUNC6 (&arg2, JERRYX_ARG_NO_COERCE, JERRYX_ARG_REQUIRED, 1)
  };

  jerry_value_t is_ok = FUNC7 (args_p, args_cnt, item_mapping, FUNC0 (item_mapping));

  FUNC2 (!FUNC5 (is_ok));

  /* We are going to call this with [false, 3.0] and [3.0, false] parameters... */
  bool arg1_is_false = (arg1.type_of_value == BOOL_VALUE && arg1.value.bool_field == false);
  bool arg1_is_three = (arg1.type_of_value == DOUBLE_VALUE && arg1.value.double_field == 3.0);
  bool arg2_is_false = (arg2.type_of_value == BOOL_VALUE && arg2.value.bool_field == false);
  bool arg2_is_three = (arg2.type_of_value == DOUBLE_VALUE && arg2.value.double_field == 3.0);
  FUNC2 ((arg1_is_false && arg2_is_three) || (arg1_is_three && arg2_is_false));

  FUNC4 (is_ok);

  return FUNC3 ();
}