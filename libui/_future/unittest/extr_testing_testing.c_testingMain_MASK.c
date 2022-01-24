#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* name; scalar_t__ skipped; scalar_t__ failed; int /*<<< orphan*/  (* f ) (TYPE_1__*) ;int /*<<< orphan*/  returnNowBuf; struct TYPE_5__* next; } ;
typedef  TYPE_1__ testingT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* tests ; 

int FUNC5(void)
{
	testingT *t;
	int anyFailed;
	const char *status;

	// TODO see if this should run if all tests are skipped
	if (tests == NULL) {
		FUNC0(stderr, "warning: no tests to run\n");
		// imitate Go here (TODO confirm this)
		return 0;
	}

	anyFailed = 0;
	for (t = tests; t != NULL; t = t->next) {
		FUNC1("=== RUN   %s\n", t->name);
		if (FUNC3(t->returnNowBuf) == 0)
			(*(t->f))(t);
		FUNC2(t);
		status = "PASS";
		if (t->failed) {
			status = "FAIL";
			anyFailed = 1;
		} else if (t->skipped)
			// note that failed overrides skipped
			status = "SKIP";
		FUNC1("--- %s: %s (%s)\n", status, t->name, "TODO");
	}

	if (anyFailed) {
		FUNC1("FAIL\n");
		return 1;
	}
	FUNC1("PASS\n");
	return 0;
}