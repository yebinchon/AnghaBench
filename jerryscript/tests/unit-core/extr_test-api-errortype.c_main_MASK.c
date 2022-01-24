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
typedef  int /*<<< orphan*/  test_values ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  scalar_t__ jerry_error_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;
typedef  int /*<<< orphan*/  errors ;

/* Variables and functions */
 scalar_t__ JERRY_ERROR_COMMON ; 
 scalar_t__ JERRY_ERROR_EVAL ; 
 scalar_t__ JERRY_ERROR_NONE ; 
 scalar_t__ JERRY_ERROR_RANGE ; 
 scalar_t__ JERRY_ERROR_REFERENCE ; 
 scalar_t__ JERRY_ERROR_SYNTAX ; 
 scalar_t__ JERRY_ERROR_TYPE ; 
 scalar_t__ JERRY_ERROR_URI ; 
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13 (void)
{
  FUNC1 ();

  FUNC10 (JERRY_INIT_EMPTY);

  jerry_error_t errors[] =
  {
    JERRY_ERROR_COMMON,
    JERRY_ERROR_EVAL,
    JERRY_ERROR_RANGE,
    JERRY_ERROR_REFERENCE,
    JERRY_ERROR_SYNTAX,
    JERRY_ERROR_TYPE,
    JERRY_ERROR_URI
  };

  for (size_t idx = 0; idx < sizeof (errors) / sizeof (errors[0]); idx++)
  {
    jerry_value_t error_obj = FUNC4 (errors[idx], (const jerry_char_t *)"test");
    FUNC0 (FUNC12 (error_obj));
    FUNC0 (FUNC8 (error_obj) == errors[idx]);

    error_obj = FUNC9 (error_obj, true);

    FUNC0 (FUNC8 (error_obj) == errors[idx]);

    FUNC11 (error_obj);
  }

  jerry_value_t test_values[] =
  {
    FUNC5 (11),
    FUNC7 ((const jerry_char_t *) "message"),
    FUNC3 (true),
    FUNC6 (),
  };

  for (size_t idx = 0; idx < sizeof (test_values) / sizeof (test_values[0]); idx++)
  {
    jerry_error_t error_type = FUNC8 (test_values[idx]);
    FUNC0 (error_type == JERRY_ERROR_NONE);
    FUNC11 (test_values[idx]);
  }

  FUNC2 ();
}