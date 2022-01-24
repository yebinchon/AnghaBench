#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
struct TYPE_4__ {int registered; int result; } ;
typedef  TYPE_1__ jerryx_register_result ;
typedef  int /*<<< orphan*/  jerryx_property_entry ;
typedef  int jerry_value_t ;
typedef  size_t jerry_size_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char const*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int*,size_t) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int) ; 
 int FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (int,int) ; 
 int FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,TYPE_1__) ; 
 TYPE_1__ FUNC20 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  method_hello ; 

__attribute__((used)) static void
FUNC21 (void)
{
  FUNC14 (JERRY_INIT_EMPTY);

  const char *prop_ok = "prop_ok";
  const char *prop_err = "prop_err";
  const char *prop_not = "prop_not";
  jerry_value_t target_object = FUNC7 ();
  FUNC3 (target_object, prop_err);

  jerryx_property_entry methods[] =
  {
    FUNC0 (prop_ok, method_hello), // This registration is ok
    FUNC0 (prop_err, method_hello), // This registration should fail
    FUNC0 (prop_not, method_hello), // This registration is not done
    FUNC1 (),
  };

  jerryx_register_result register_result = FUNC20 (target_object, methods);

  FUNC2 (register_result.registered == 1);
  FUNC2 (FUNC16 (register_result.result));

  FUNC19 (methods, register_result);
  FUNC15 (register_result.result);

  {
    // Test if property "prop_ok" is correctly registered.
    jerry_value_t prop_ok_val = FUNC8 ((const jerry_char_t *) prop_ok);
    jerry_value_t prop_ok_exists = FUNC13 (target_object, prop_ok_val);
    FUNC2 (FUNC10 (prop_ok_exists) == true);
    FUNC15 (prop_ok_exists);

    // Try calling the method
    jerry_value_t prop_ok_func = FUNC12 (target_object, prop_ok_val);
    FUNC2 (FUNC17 (prop_ok_func) == true);
    jerry_value_t args[2] =
    {
      FUNC6 (22),
      FUNC6 (-3),
    };
    jerry_size_t args_cnt = sizeof (args) / sizeof (jerry_value_t);
    jerry_value_t func_result = FUNC4 (prop_ok_func,
                                                     FUNC9 (),
                                                     args,
                                                     args_cnt);
    FUNC2 (FUNC18 (func_result) == true);
    FUNC2 ((uint32_t) FUNC11 (func_result) == 2u);
    FUNC15 (func_result);
    for (jerry_size_t idx = 0; idx < args_cnt; idx++)
    {
      FUNC15 (args[idx]);
    }
    FUNC15 (prop_ok_func);
    FUNC15 (prop_ok_val);
  }

  {
    // The "prop_err" should exist - as it was "freezed" - but it should not be a function
    jerry_value_t prop_err_val = FUNC8 ((const jerry_char_t *) prop_err);
    jerry_value_t prop_err_exists = FUNC13 (target_object, prop_err_val);
    FUNC2 (FUNC10 (prop_err_exists) == true);
    FUNC15 (prop_err_exists);

    jerry_value_t prop_err_func = FUNC17 (prop_err_val);
    FUNC2 (FUNC17 (prop_err_func) == false);
    FUNC15 (prop_err_val);
  }

  { // The "prop_not" is not available on the target object
    jerry_value_t prop_not_val = FUNC8 ((const jerry_char_t *) prop_not);
    jerry_value_t prop_not_exists = FUNC13 (target_object, prop_not_val);
    FUNC2 (FUNC10 (prop_not_exists) == false);
    FUNC15 (prop_not_exists);
    FUNC15 (prop_not_val);
  }

  FUNC15 (target_object);

  FUNC5 ();
}