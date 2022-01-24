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
typedef  int uint32_t ;
struct TYPE_3__ {scalar_t__ expected; int /*<<< orphan*/  rhs; int /*<<< orphan*/  lhs; } ;
typedef  TYPE_1__ test_entry_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;
typedef  int /*<<< orphan*/  error_tests ;
typedef  int /*<<< orphan*/  bool_tests ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_BIN_OP_INSTANCEOF ; 
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (double) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_constructor ; 

int
FUNC20 (void)
{
  FUNC2 ();

  FUNC16 (JERRY_INIT_EMPTY);

  jerry_value_t base_obj = FUNC12 ();
  jerry_value_t constructor = FUNC9 (my_constructor);

  jerry_value_t no_proto_instance_val = FUNC6 (constructor, NULL, 0);

  jerry_value_t prototype_str = FUNC13 ((const jerry_char_t *) "prototype");
  jerry_value_t res = FUNC18 (constructor, prototype_str, base_obj);
  FUNC17 (prototype_str);
  FUNC1 (!FUNC19 (res));
  FUNC17 (res);

  jerry_value_t instance_val = FUNC6 (constructor, NULL, 0);

  jerry_value_t error = FUNC8 (base_obj, false);

  test_entry_t bool_tests[] =
  {
    FUNC0 (FUNC3 (instance_val), FUNC3 (constructor), true),
    FUNC0 (FUNC3 (no_proto_instance_val), FUNC3 (constructor), false),
    FUNC0 (FUNC3 (base_obj), FUNC3 (constructor), false)
  };

  for (uint32_t idx = 0; idx < sizeof (bool_tests) / sizeof (test_entry_t); idx++)
  {
    jerry_value_t result = FUNC4 (JERRY_BIN_OP_INSTANCEOF,
                                                   bool_tests[idx].lhs,
                                                   bool_tests[idx].rhs);
    FUNC1 (!FUNC19 (result));
    FUNC1 (FUNC15 (result) == bool_tests[idx].expected);
    FUNC17 (bool_tests[idx].lhs);
    FUNC17 (bool_tests[idx].rhs);
    FUNC17 (result);
  }

  test_entry_t error_tests[] =
  {
    FUNC0 (FUNC3 (constructor), FUNC3 (instance_val), true),
    FUNC0 (FUNC14 (), FUNC3 (constructor), true),
    FUNC0 (FUNC3 (instance_val), FUNC14 (), true),
    FUNC0 (FUNC3 (instance_val), FUNC3 (base_obj), true),
    FUNC0 (FUNC3 (error), FUNC3 (constructor), true),
    FUNC0 (FUNC3 (instance_val), FUNC3 (error), true),
    FUNC0 (FUNC13 ((const jerry_char_t *) ""), FUNC13 ((const jerry_char_t *) ""), true),
    FUNC0 (FUNC13 ((const jerry_char_t *) ""), FUNC11 (5.0), true),
    FUNC0 (FUNC11 (5.0), FUNC13 ((const jerry_char_t *) ""), true),
    FUNC0 (FUNC7 (1), FUNC7 (1), true),
    FUNC0 (FUNC7 (1), FUNC12 (), true),
    FUNC0 (FUNC12 (), FUNC7 (1), true),
    FUNC0 (FUNC10 (), FUNC12 (), true),
    FUNC0 (FUNC12 (), FUNC13 ((const jerry_char_t *) ""), true)
  };

  for (uint32_t idx = 0; idx < sizeof (error_tests) / sizeof (test_entry_t); idx++)
  {
    jerry_value_t result = FUNC4 (JERRY_BIN_OP_INSTANCEOF,
                                                   error_tests[idx].lhs,
                                                   error_tests[idx].rhs);
    FUNC1 (FUNC19 (result) == error_tests[idx].expected);
    FUNC17 (error_tests[idx].lhs);
    FUNC17 (error_tests[idx].rhs);
    FUNC17 (result);
  }

  FUNC17 (base_obj);
  FUNC17 (constructor);
  FUNC17 (error);
  FUNC17 (instance_val);
  FUNC17 (no_proto_instance_val);

  FUNC5 ();

  return 0;
}