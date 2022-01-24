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
typedef  int /*<<< orphan*/  test_source ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  char jerry_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_PARSE_NO_OPTS ; 
 scalar_t__ JERRY_PROMISE_STATE_FULFILLED ; 
 scalar_t__ JERRY_PROMISE_STATE_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12 (void)
{
  const jerry_char_t test_source[] = "(new Promise(function(rs, rj) { rs(30); })).then(function(v) { return v + 1; })";

  jerry_value_t parsed_code_val = FUNC4 (NULL,
                                               0,
                                               test_source,
                                               sizeof (test_source) - 1,
                                               JERRY_PARSE_NO_OPTS);
  FUNC0 (!FUNC8 (parsed_code_val));

  jerry_value_t res = FUNC6 (parsed_code_val);
  FUNC0 (FUNC10 (res));

  FUNC0 (FUNC3 (res) == JERRY_PROMISE_STATE_PENDING);

  jerry_value_t run_result = FUNC7 ();
  FUNC0 (FUNC11 (run_result));
  FUNC5 (run_result);

  FUNC0 (FUNC3 (res) == JERRY_PROMISE_STATE_FULFILLED);
  jerry_value_t promise_result = FUNC2 (res);
  FUNC0 (FUNC9 (promise_result));
  FUNC0 (FUNC1 (promise_result) == 31.0);

  FUNC5 (promise_result);
  FUNC5 (res);
  FUNC5 (parsed_code_val);
}