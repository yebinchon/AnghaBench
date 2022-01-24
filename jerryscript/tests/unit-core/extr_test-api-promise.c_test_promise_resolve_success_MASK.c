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
 scalar_t__ JERRY_PROMISE_STATE_FULFILLED ; 
 scalar_t__ JERRY_PROMISE_STATE_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 double FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17 (void)
{
  jerry_value_t my_promise = FUNC3 ();

  // A created promise has an undefined promise result by default and a pending state
  {
    jerry_value_t promise_result = FUNC7 (my_promise);
    FUNC0 (FUNC16 (promise_result));

    jerry_promise_state_t promise_state = FUNC8 (my_promise);
    FUNC0 (promise_state == JERRY_PROMISE_STATE_PENDING);

    FUNC10 (promise_result);
  }

  jerry_value_t resolve_value = FUNC2 ();
  {
    jerry_value_t obj_key = FUNC4 ((const jerry_char_t *) "key_one");
    jerry_value_t set_result = FUNC12 (resolve_value, obj_key, FUNC1 (3));
    FUNC0 (FUNC13 (set_result) && (FUNC5 (set_result) == true));
    FUNC10 (set_result);
    FUNC10 (obj_key);
  }

  // A resolved promise should have the result of from the resolve call and a fulfilled state
  {
    jerry_value_t resolve_result = FUNC11 (my_promise, resolve_value, true);

    // Release "old" value of resolve.
    FUNC10 (resolve_value);

    jerry_value_t promise_result = FUNC7 (my_promise);
    {
      FUNC0 (FUNC15 (promise_result));
      jerry_value_t obj_key = FUNC4 ((const jerry_char_t *) "key_one");
      jerry_value_t get_result = FUNC9 (promise_result, obj_key);
      FUNC0 (FUNC14 (get_result));
      FUNC0 (FUNC6 (get_result) == 3.0);

      FUNC10 (get_result);
      FUNC10 (obj_key);
    }

    jerry_promise_state_t promise_state = FUNC8 (my_promise);
    FUNC0 (promise_state == JERRY_PROMISE_STATE_FULFILLED);

    FUNC10 (promise_result);

    FUNC10 (resolve_result);
  }

  // Resolvind a promise again does not change the result/state
  {
    jerry_value_t resolve_result = FUNC11 (my_promise, FUNC1 (50), false);

    jerry_value_t promise_result = FUNC7 (my_promise);
    {
      FUNC0 (FUNC15 (promise_result));
      jerry_value_t obj_key = FUNC4 ((const jerry_char_t *) "key_one");
      jerry_value_t get_result = FUNC9 (promise_result, obj_key);
      FUNC0 (FUNC14 (get_result));
      FUNC0 (FUNC6 (get_result) == 3.0);

      FUNC10 (get_result);
      FUNC10 (obj_key);
    }

    jerry_promise_state_t promise_state = FUNC8 (my_promise);
    FUNC0 (promise_state == JERRY_PROMISE_STATE_FULFILLED);

    FUNC10 (promise_result);

    FUNC10 (resolve_result);
  }

  FUNC10 (my_promise);
}