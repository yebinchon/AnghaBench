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
struct TYPE_4__ {int registered; int /*<<< orphan*/  result; } ;
typedef  TYPE_1__ jerryx_register_result ;
typedef  int /*<<< orphan*/  jerryx_property_entry ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,double) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 double FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,TYPE_1__) ; 
 TYPE_1__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  method_hello ; 
 int /*<<< orphan*/  FUNC22 (char const*) ; 

__attribute__((used)) static void
FUNC23 (void)
{
  FUNC14 (JERRY_INIT_EMPTY);

  jerry_value_t target_object = FUNC9 ();

  // Test simple registration
  jerryx_property_entry methods[] =
  {
    FUNC1 ("hello", method_hello),
    FUNC3 ("my_number", 42.5),
    FUNC4 ("my_str", "super_str"),
    FUNC5 ("my_str_sz", "super_str", 6),
    FUNC0 ("my_bool", true),
    FUNC0 ("my_bool_false", false),
    FUNC6 ("my_non_value"),
    FUNC2 (),
  };

  jerryx_register_result register_result = FUNC20 (target_object, methods);

  FUNC7 (register_result.registered == 7);
  FUNC7 (FUNC18 (register_result.result));

  FUNC19 (methods, register_result);
  FUNC15 (register_result.result);

  jerry_value_t global_obj = FUNC12 ();
  FUNC21 (global_obj, "test", target_object);
  FUNC15 (target_object);
  FUNC15 (global_obj);

  {
    const char *test_A = "test.my_number";
    jerry_value_t result = FUNC10 ((const jerry_char_t *) test_A, FUNC22 (test_A), 0);
    FUNC7 (FUNC17 (result));
    FUNC7 (FUNC13 (result) == 42.5);
    FUNC15 (result);
  }

  {
    const char *test_A = "test.my_str_sz === 'super_'";
    jerry_value_t result = FUNC10 ((const jerry_char_t *) test_A, FUNC22 (test_A), 0);
    FUNC7 (FUNC16 (result));
    FUNC7 (FUNC11 (result) == true);
    FUNC15 (result);
  }

  {
    const char *test_A = "test.my_str === 'super_str'";
    jerry_value_t result = FUNC10 ((const jerry_char_t *) test_A, FUNC22 (test_A), 0);
    FUNC7 (FUNC16 (result));
    FUNC7 (FUNC11 (result) == true);
    FUNC15 (result);
  }

  {
    const char *test_A = "test.my_bool";
    jerry_value_t result = FUNC10 ((const jerry_char_t *) test_A, FUNC22 (test_A), 0);
    FUNC7 (FUNC16 (result));
    FUNC7 (FUNC11 (result) == true);
    FUNC15 (result);
  }

  {
    const char *test_A = "test.my_bool_false";
    jerry_value_t result = FUNC10 ((const jerry_char_t *) test_A, FUNC22 (test_A), 0);
    FUNC7 (FUNC16 (result));
    FUNC7 (FUNC11 (result) == false);
    FUNC15 (result);
  }

  {
    const char *test_A = "test.my_non_value";
    jerry_value_t result = FUNC10 ((const jerry_char_t *) test_A, FUNC22 (test_A), 0);
    FUNC7 (FUNC18 (result));
    FUNC15 (result);
  }

  {
    const char *test_A = "test.hello(33, 42, 2);";
    jerry_value_t result = FUNC10 ((const jerry_char_t *) test_A, FUNC22 (test_A), 0);
    FUNC7 (FUNC17 (result));
    FUNC7 ((uint32_t) FUNC13 (result) == 3u);
    FUNC15 (result);
  }

  {
    const char *test_A = "test.hello();";
    jerry_value_t result = FUNC10 ((const jerry_char_t *) test_A, FUNC22 (test_A), 0);
    FUNC7 (FUNC17 (result));
    FUNC7 ((uint32_t) FUNC13 (result) == 0u);
    FUNC15 (result);
  }

  FUNC8 ();
}