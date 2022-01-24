#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct testcase_t {TYPE_1__* setup; int /*<<< orphan*/  (* fn ) (void*) ;} ;
typedef  enum outcome { ____Placeholder_outcome } outcome ;
struct TYPE_2__ {scalar_t__ (* cleanup_fn ) (struct testcase_t const*,void*) ;void* (* setup_fn ) (struct testcase_t const*) ;} ;

/* Variables and functions */
 int FAIL ; 
 int OK ; 
 int SKIP ; 
 scalar_t__ TT_SKIP ; 
 int cur_test_outcome ; 
 scalar_t__ opt_timeout ; 
 void* FUNC0 (struct testcase_t const*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (struct testcase_t const*,void*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct testcase_t const*,void*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static enum outcome
FUNC7(const struct testcase_t *testcase)
{
	void *env = NULL;
	int outcome;
	if (testcase->setup) {
		env = testcase->setup->setup_fn(testcase);
		if (!env)
			return FAIL;
		else if (env == (void*)TT_SKIP)
			return SKIP;
	}

	cur_test_outcome = OK;
	{
		if (opt_timeout) {
#ifdef _WIN32
			cur_test_outcome = testcase_run_in_thread_(testcase, env);
#else
			FUNC6();
			testcase->fn(env);
			FUNC4();
#endif
		} else {
			testcase->fn(env);
		}
	}
	outcome = cur_test_outcome;

	if (testcase->setup) {
		if (testcase->setup->cleanup_fn(testcase, env) == 0)
			outcome = FAIL;
	}

	return outcome;
}