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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  JERRYX_ARG_COERCE ; 
 int /*<<< orphan*/  JERRYX_ARG_OPTIONAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const,int /*<<< orphan*/  const*,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int validator3_count ; 

__attribute__((used)) static jerry_value_t
FUNC9 (const jerry_value_t func_obj_val, /**< function object */
                         const jerry_value_t this_val, /**< this value */
                         const jerry_value_t args_p[], /**< arguments list */
                         const jerry_length_t args_cnt) /**< arguments length */
{

  FUNC1 (func_obj_val);

  bool arg1 = false;
  bool arg2 = false;

  jerryx_arg_t mapping[] =
  {
    /* ignore this */
    FUNC7 (),
    /* 1th argument should be boolean, and it is optional */
    FUNC6 (&arg1, JERRYX_ARG_COERCE, JERRYX_ARG_OPTIONAL),
    /* 2nd argument should be boolean, and it is optional */
    FUNC6 (&arg2, JERRYX_ARG_COERCE, JERRYX_ARG_OPTIONAL),
  };

  jerry_value_t is_ok = FUNC8 (this_val,
                                                            args_p,
                                                            args_cnt,
                                                            mapping,
                                                            FUNC0 (mapping));

  if (validator3_count == 0)
  {
    FUNC2 (!FUNC5 (is_ok));
    FUNC2 (arg1);
    FUNC2 (arg2);
  }
  else if (validator3_count == 1)
  {
    FUNC2 (!FUNC5 (is_ok));
    FUNC2 (arg1);
    /* arg2 must be unchanged */
    FUNC2 (!arg2);
  }
  else if (validator3_count == 2)
  {
    FUNC2 (!FUNC5 (is_ok));
    /* arg1 must be unchanged */
    FUNC2 (!arg1);
    /* arg2 must be unchanged */
    FUNC2 (!arg2);
  }
  else if (validator3_count == 3)
  {
    FUNC2 (!FUNC5 (is_ok));
    /* arg1 must be unchanged */
    FUNC2 (!arg1);
    /* arg2 must be unchanged */
    FUNC2 (!arg2);
  }

  FUNC4 (is_ok);
  validator3_count++;

  return FUNC3 ();
}