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
struct clar_summary {char* filename; int /*<<< orphan*/  fp; } ;
struct clar_report {char* suite; struct clar_report* next; int /*<<< orphan*/  test; struct clar_error* errors; } ;
struct clar_error {struct clar_error* next; int /*<<< orphan*/  description; int /*<<< orphan*/  error_msg; } ;
struct TYPE_2__ {int /*<<< orphan*/  total_errors; int /*<<< orphan*/  tests_ran; struct clar_report* reports; } ;

/* Variables and functions */
 TYPE_1__ _clar ; 
 scalar_t__ FUNC0 (struct clar_summary*,char*,int) ; 
 scalar_t__ FUNC1 (struct clar_summary*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct clar_summary*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct clar_summary*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct clar_summary*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct clar_summary*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct clar_summary *summary)
{
	struct clar_report *report;
	const char *last_suite = NULL;

	if (FUNC4(summary) < 0)
		goto on_error;

	report = _clar.reports;
	while (report != NULL) {
		struct clar_error *error = report->errors;

		if (last_suite == NULL || FUNC8(last_suite, report->suite) != 0) {
			if (FUNC3(summary, 0, report->suite, "",
			    FUNC9(NULL), 0, _clar.tests_ran, _clar.total_errors, 0) < 0)
				goto on_error;
		}

		last_suite = report->suite;

		FUNC2(summary, report->test, "what", 0);

		while (error != NULL) {
			if (FUNC1(summary, "assert",
			    error->error_msg, error->description) < 0)
				goto on_error;

			error = error->next;
		}

		if (FUNC0(summary, "testcase", 2) < 0)
			goto on_error;

		report = report->next;

		if (!report || FUNC8(last_suite, report->suite) != 0) {
			if (FUNC0(summary, "testsuite", 1) < 0)
				goto on_error;
		}
	}

	if (FUNC0(summary, "testsuites", 0) < 0 ||
	    FUNC5(summary->fp) != 0)
		goto on_error;

	FUNC7("written summary file to %s\n", summary->filename);

	FUNC6(summary);
	return 0;

on_error:
	FUNC5(summary->fp);
	FUNC6(summary);
	return -1;
}