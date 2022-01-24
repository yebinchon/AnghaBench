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
typedef  int /*<<< orphan*/  jerryx_module_resolver_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 scalar_t__ ACTUAL_NAME ; 
 scalar_t__ ALIAS_NAME ; 
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TEST_VALUE ; 
 int /*<<< orphan*/  canonical_test ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int) ; 

int
FUNC10 (int argc, char **argv)
{
  (void) argc;
  (void) argv;

  const jerryx_module_resolver_t *resolver = &canonical_test;

  FUNC6 (JERRY_INIT_EMPTY);

  jerry_value_t actual_name = FUNC3 ((jerry_char_t *) ACTUAL_NAME);
  jerry_value_t alias_name = FUNC3 ((jerry_char_t *) ALIAS_NAME);

  /* It's important that we resolve by the non-canonical name first. */
  jerry_value_t result2 = FUNC9 (alias_name, &resolver, 1);
  jerry_value_t result1 = FUNC9 (actual_name, &resolver, 1);
  FUNC7 (actual_name);
  FUNC7 (alias_name);

  /* An elaborate way of doing strict equal - set a property on one object and it "magically" appears on the other. */
  jerry_value_t prop_name = FUNC3 ((jerry_char_t *) "something");
  jerry_value_t prop_value = FUNC2 (TEST_VALUE);
  FUNC7 (FUNC8 (result1, prop_name, prop_value));
  FUNC7 (prop_value);

  prop_value = FUNC5 (result2, prop_name);
  FUNC0 (FUNC4 (prop_value) == TEST_VALUE);
  FUNC7 (prop_value);

  FUNC7 (prop_name);
  FUNC7 (result1);
  FUNC7 (result2);

  FUNC1 ();

  return 0;
}