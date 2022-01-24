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
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  scalar_t__ jerry_promise_state_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 scalar_t__ JERRY_ERROR_TYPE ; 
 scalar_t__ JERRY_PROMISE_STATE_PENDING ; 
 scalar_t__ JERRY_PROMISE_STATE_REJECTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12 (void)
{
  jerry_value_t my_promise = FUNC3 ();

  // A created promise has an undefined promise result by default and a pending state
  {
    jerry_value_t promise_result = FUNC5 (my_promise);
    FUNC0 (FUNC11 (promise_result));

    jerry_promise_state_t promise_state = FUNC6 (my_promise);
    FUNC0 (promise_state == JERRY_PROMISE_STATE_PENDING);

    FUNC8 (promise_result);
  }

  // A resolved promise should have the result of from the resolve call and a fulfilled state
  {
    jerry_value_t error_value = FUNC1 (JERRY_ERROR_TYPE, (const jerry_char_t *) "resolve_fail");
    jerry_value_t error_obj = FUNC7 (error_value, true);
    jerry_value_t resolve_result = FUNC9 (my_promise, error_obj, false);
    FUNC8 (error_obj);

    jerry_value_t promise_result = FUNC5 (my_promise);
    // The error is not throw that's why it is only an error object.
    FUNC0 (FUNC10 (promise_result));
    FUNC0 (FUNC4 (promise_result) == JERRY_ERROR_TYPE);

    jerry_promise_state_t promise_state = FUNC6 (my_promise);
    FUNC0 (promise_state == JERRY_PROMISE_STATE_REJECTED);

    FUNC8 (promise_result);

    FUNC8 (resolve_result);
  }

  // Resolvind a promise again does not change the result/state
  {
    jerry_value_t resolve_result = FUNC9 (my_promise, FUNC2 (50), true);

    jerry_value_t promise_result = FUNC5 (my_promise);
    FUNC0 (FUNC10 (promise_result));
    FUNC0 (FUNC4 (promise_result) == JERRY_ERROR_TYPE);

    jerry_promise_state_t promise_state = FUNC6 (my_promise);
    FUNC0 (promise_state == JERRY_PROMISE_STATE_REJECTED);

    FUNC8 (promise_result);

    FUNC8 (resolve_result);
  }

  FUNC8 (my_promise);
}