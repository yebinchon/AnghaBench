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
struct attr_expected {int /*<<< orphan*/  attr; int /*<<< orphan*/  expected_str; int /*<<< orphan*/  expected; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct attr_expected*) ; 
 int /*<<< orphan*/  GIT_ATTR_FILE__FROM_FILE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 struct attr_expected* get_one_test_cases ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	int i;

	for (i = 0; i < (int)FUNC0(get_one_test_cases); ++i) {
		struct attr_expected *scan = &get_one_test_cases[i];
		const char *value;

		FUNC3(FUNC5(&value, g_repo, 0, scan->path, scan->attr));
		FUNC1(
			scan->expected, scan->expected_str, scan->attr, value);
	}

	FUNC2(FUNC4(
		g_repo, GIT_ATTR_FILE__FROM_FILE, ".git/info/attributes"));
	FUNC2(FUNC4(
		g_repo, GIT_ATTR_FILE__FROM_FILE, ".gitattributes"));
	FUNC2(FUNC4(
		g_repo, GIT_ATTR_FILE__FROM_FILE, "sub/.gitattributes"));
}