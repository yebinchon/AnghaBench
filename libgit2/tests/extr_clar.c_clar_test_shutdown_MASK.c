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
struct clar_report {struct clar_report* next; } ;
struct clar_explicit {struct clar_explicit* next; } ;
struct TYPE_2__ {struct clar_report* summary_filename; struct clar_report* reports; struct clar_report* explicit; int /*<<< orphan*/  summary; scalar_t__ write_summary; int /*<<< orphan*/  total_errors; int /*<<< orphan*/  tests_ran; } ;

/* Variables and functions */
 TYPE_1__ _clar ; 
 scalar_t__ _clar_suite_count ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct clar_report*) ; 

void
FUNC6(void)
{
	struct clar_explicit *explicit, *explicit_next;
	struct clar_report *report, *report_next;

	FUNC1(
		_clar.tests_ran,
		(int)_clar_suite_count,
		_clar.total_errors
	);

	FUNC3();

	if (_clar.write_summary && FUNC2(_clar.summary) < 0) {
		FUNC0("Failed to write the summary file\n");
		FUNC4(-1);
	}

	for (explicit = _clar.explicit; explicit; explicit = explicit_next) {
		explicit_next = explicit->next;
		FUNC5(explicit);
	}

	for (report = _clar.reports; report; report = report_next) {
		report_next = report->next;
		FUNC5(report);
	}

	FUNC5(_clar.summary_filename);
}