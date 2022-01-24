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
 int /*<<< orphan*/  JERRYX_ARG_NO_COERCE ; 
 int /*<<< orphan*/  JERRYX_ARG_OPTIONAL ; 
 int /*<<< orphan*/  JERRYX_ARG_REQUIRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const,int /*<<< orphan*/  const*,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int validator1_count ; 

__attribute__((used)) static jerry_value_t
FUNC15 (const jerry_value_t func_obj_val, /**< function object */
                         const jerry_value_t this_val, /**< this value */
                         const jerry_value_t args_p[], /**< arguments list */
                         const jerry_length_t args_cnt) /**< arguments length */
{
  FUNC1 (func_obj_val);

  bool arg1;
  double arg2 = 0.0;
  char arg3[5] = "1234";
  jerry_value_t arg4 = FUNC3 ();

  jerryx_arg_t mapping[] =
  {
    /* ignore this */
    FUNC10 (),
    /* 1st argument should be boolean */
    FUNC8 (&arg1, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    /* 2nd argument should be strict number */
    FUNC11 (&arg2, JERRYX_ARG_NO_COERCE, JERRYX_ARG_REQUIRED),
    /* 3th argument should be string */
    FUNC12 (arg3, 5, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    /* 4th argument should be function, and it is optional */
    FUNC9 (&arg4, JERRYX_ARG_OPTIONAL)
  };

  jerry_value_t is_ok = FUNC13 (this_val,
                                                            args_p,
                                                            args_cnt,
                                                            mapping,
                                                            FUNC0 (mapping));

  if (validator1_count == 0)
  {
    FUNC2 (!FUNC5 (is_ok));
    FUNC2 (arg1);
    FUNC2 (arg2 == 10.5);
    FUNC2 (FUNC14 (arg3, "abc") == 0);
    FUNC2 (FUNC6 (arg4));
  }
  else if (validator1_count == 1)
  {
    FUNC2 (!FUNC5 (is_ok));
    FUNC2 (arg1);
    FUNC2 (arg2 == 10.5);
    FUNC2 (FUNC14 (arg3, "abc") == 0);
    FUNC2 (FUNC7 (arg4));
  }
  else if (validator1_count == 2)
  {
    FUNC2 (!FUNC5 (is_ok));
    FUNC2 (arg1);
    FUNC2 (arg2 == 10.5);
    FUNC2 (FUNC14 (arg3, "") == 0);
    FUNC2 (FUNC7 (arg4));
  }
  else
  {
    FUNC2 (FUNC5 (is_ok));
  }

  FUNC4 (is_ok);
  FUNC4 (arg4);
  validator1_count++;

  return FUNC3 ();
}