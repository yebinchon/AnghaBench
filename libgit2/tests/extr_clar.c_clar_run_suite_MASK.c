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
struct clar_suite {char const* name; size_t test_count; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  initialize; int /*<<< orphan*/  enabled; struct clar_func* tests; } ;
struct clar_report {char const* suite; struct clar_report* next; int /*<<< orphan*/  status; int /*<<< orphan*/  test_number; int /*<<< orphan*/ * test; } ;
struct clar_func {int /*<<< orphan*/ * name; } ;
struct TYPE_2__ {char const* active_suite; int /*<<< orphan*/ * active_test; scalar_t__ total_errors; scalar_t__ exit_on_error; struct clar_report* last_report; struct clar_report* reports; int /*<<< orphan*/  tests_ran; int /*<<< orphan*/  suites_ran; int /*<<< orphan*/  report_errors_only; } ;

/* Variables and functions */
 int /*<<< orphan*/  CL_TEST_NOTRUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CL_TRACE__SUITE_BEGIN ; 
 int /*<<< orphan*/  CL_TRACE__SUITE_END ; 
 TYPE_1__ _clar ; 
 struct clar_report* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clar_func const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static void
FUNC6(const struct clar_suite *suite, const char *filter)
{
	const struct clar_func *test = suite->tests;
	size_t i, matchlen;
	struct clar_report *report;

	if (!suite->enabled)
		return;

	if (_clar.exit_on_error && _clar.total_errors)
		return;

	if (!_clar.report_errors_only)
		FUNC2(suite->name, ++_clar.suites_ran);

	_clar.active_suite = suite->name;
	_clar.active_test = NULL;
	FUNC0(CL_TRACE__SUITE_BEGIN);

	if (filter) {
		size_t suitelen = FUNC4(suite->name);
		matchlen = FUNC4(filter);
		if (matchlen <= suitelen) {
			filter = NULL;
		} else {
			filter += suitelen;
			while (*filter == ':')
				++filter;
			matchlen = FUNC4(filter);
		}
	}

	for (i = 0; i < suite->test_count; ++i) {
		if (filter && FUNC5(test[i].name, filter, matchlen))
			continue;

		_clar.active_test = test[i].name;

		report = FUNC1(1, sizeof(struct clar_report));
		report->suite = _clar.active_suite;
		report->test = _clar.active_test;
		report->test_number = _clar.tests_ran;
		report->status = CL_TEST_NOTRUN;

		if (_clar.reports == NULL)
			_clar.reports = report;

		if (_clar.last_report != NULL)
			_clar.last_report->next = report;

		_clar.last_report = report;

		FUNC3(&test[i], &suite->initialize, &suite->cleanup);

		if (_clar.exit_on_error && _clar.total_errors)
			return;
	}

	_clar.active_test = NULL;
	FUNC0(CL_TRACE__SUITE_END);
}