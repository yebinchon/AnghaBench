#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* line; int /*<<< orphan*/  header; } ;
typedef  TYPE_1__ parse_test_case ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* failing_header_cases ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const**,char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* passing_header_cases ; 
 int FUNC4 (char const*) ; 

void FUNC5(void)
{
	git_oid oid;

	parse_test_case *testcase;
	for (testcase = passing_header_cases; testcase->line != NULL; testcase++)
	{
		const char *line = testcase->line;
		const char *line_end = line + FUNC4(line);

		FUNC2(FUNC3(&oid, &line, line_end, testcase->header));
		FUNC0(line == line_end);
	}

	for (testcase = failing_header_cases; testcase->line != NULL; testcase++)
	{
		const char *line = testcase->line;
		const char *line_end = line + FUNC4(line);

		FUNC1(FUNC3(&oid, &line, line_end, testcase->header));
	}
}