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
struct TYPE_2__ {int write_summary; int /*<<< orphan*/ * summary_filename; int /*<<< orphan*/  summary; } ;

/* Variables and functions */
 TYPE_1__ _clar ; 
 scalar_t__ _clar_callback_count ; 
 scalar_t__ _clar_suite_count ; 
 int /*<<< orphan*/  FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(int argc, char **argv)
{
	FUNC1(
		(int)_clar_callback_count,
		(int)_clar_suite_count,
		""
	);

	if ((_clar.summary_filename = FUNC6("CLAR_SUMMARY")) != NULL) {
		_clar.write_summary = 1;
		_clar.summary_filename = FUNC7(_clar.summary_filename);
	}

	if (argc > 1)
		FUNC0(argc, argv);

	if (_clar.write_summary &&
	    !(_clar.summary = FUNC4(_clar.summary_filename))) {
		FUNC2("Failed to open the summary file\n");
		FUNC5(-1);
	}

	if (FUNC3() < 0) {
		FUNC2("Failed to sandbox the test runner.\n");
		FUNC5(-1);
	}
}