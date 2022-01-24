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
struct TYPE_4__ {scalar_t__ registered; int /*<<< orphan*/  result; } ;
typedef  TYPE_1__ jerryx_register_result ;
typedef  int /*<<< orphan*/  jerryx_property_entry ;
typedef  int /*<<< orphan*/  jerry_value_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__) ; 
 TYPE_1__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  method_hello ; 

__attribute__((used)) static void
FUNC11 (void)
{
  FUNC6 (JERRY_INIT_EMPTY);

  const char *target_prop = "test_err";
  jerry_value_t target_object = FUNC5 ();
  FUNC3 (target_object, target_prop);

  jerryx_property_entry methods[] =
  {
    FUNC0 (target_prop, method_hello), // This registration should fail
    FUNC1 (),
  };

  jerryx_register_result register_result = FUNC10 (target_object, methods);

  FUNC2 (register_result.registered == 0);
  FUNC2 (FUNC8 (register_result.result));
  FUNC9 (methods, register_result);
  FUNC7 (register_result.result);

  FUNC7 (target_object);

  FUNC4 ();
}