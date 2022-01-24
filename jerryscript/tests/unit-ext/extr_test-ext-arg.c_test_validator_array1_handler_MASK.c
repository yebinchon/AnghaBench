#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jerryx_arg_t ;
struct TYPE_3__ {int c_arg_cnt; int /*<<< orphan*/ * c_arg_p; } ;
typedef  TYPE_1__ jerryx_arg_array_items_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_length_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  JERRYX_ARG_COERCE ; 
 int /*<<< orphan*/  JERRYX_ARG_OPTIONAL ; 
 int /*<<< orphan*/  JERRYX_ARG_REQUIRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ validator_array_count ; 

__attribute__((used)) static jerry_value_t
FUNC8 (const jerry_value_t func_obj_val, /**< function object */
                               const jerry_value_t this_val, /**< this value */
                               const jerry_value_t args_p[], /**< arguments list */
                               const jerry_length_t args_cnt) /**< arguments length */
{
  FUNC1 (func_obj_val);
  FUNC1 (this_val);

  double native1 = 0;
  double native2 = 0;
  double native3 = 0;

  jerryx_arg_array_items_t arr_info;

  jerryx_arg_t item_mapping[] =
  {
    FUNC6 (&native1, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC6 (&native2, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC6 (&native3, JERRYX_ARG_COERCE, JERRYX_ARG_OPTIONAL)
  };

  arr_info.c_arg_p = item_mapping;
  arr_info.c_arg_cnt = 3;

  jerryx_arg_t mapping[] =
  {
    FUNC5 (&arr_info, JERRYX_ARG_OPTIONAL),
  };

  jerry_value_t is_ok = FUNC7 (args_p, args_cnt, mapping, FUNC0 (mapping));


  FUNC2 (!FUNC4 (is_ok));

  if (validator_array_count == 0)
  {
    FUNC2 (native1 == 1);
    FUNC2 (native2 == 2);
    FUNC2 (native3 == 0);
  }

  validator_array_count++;

  return FUNC3 ();
}