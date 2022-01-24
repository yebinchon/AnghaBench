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
typedef  char const* jerryx_arg_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_length_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int /*<<< orphan*/  JERRYX_ARG_COERCE ; 
 int /*<<< orphan*/  JERRYX_ARG_REQUIRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 char const* FUNC6 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const,int /*<<< orphan*/  const**,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  validator_prop_count ; 

__attribute__((used)) static jerry_value_t
FUNC8 (const jerry_value_t func_obj_val, /**< function object */
                              const jerry_value_t this_val, /**< this value */
                              const jerry_value_t args_p[], /**< arguments list */
                              const jerry_length_t args_cnt) /**< arguments length */
{
  FUNC1 (func_obj_val);
  FUNC1 (this_val);
  FUNC1 (args_cnt);

  bool native1 = false;
  bool native2 = true;

  const char *name_p[] = { "prop1", "prop2" };

  jerryx_arg_t mapping[] =
  {
    FUNC6 (&native1, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
    FUNC6 (&native2, JERRYX_ARG_COERCE, JERRYX_ARG_REQUIRED),
  };

  jerry_value_t is_ok = FUNC7 (args_p[0],
                                                                (const jerry_char_t **) name_p,
                                                                FUNC0 (name_p),
                                                                mapping,
                                                                FUNC0 (mapping));

  FUNC2 (FUNC5 (is_ok));
  FUNC2 (!native1);
  FUNC2 (native2);

  validator_prop_count++;
  FUNC4 (is_ok);

  return FUNC3 ();
}