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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(void)
{
	static const char *test_files[] = {
		"empty_standard_repo/a.test",
		"empty_standard_repo/b.test",
		"empty_standard_repo/c.test",
		"empty_standard_repo/d.test",
		NULL
	};

	FUNC2("empty_standard_repo", test_files);
	FUNC1(
		"empty_standard_repo/.gitignore",
		" a.test\n"
		"# this is a comment\n"
		"b.test\n"
		"\tc.test\n"
		" # not a comment\n"
		"d.test\n");

	FUNC3("a.test");
	FUNC0(" a.test");
	FUNC3("# this is a comment");
	FUNC0("b.test");
	FUNC3("c.test");
	FUNC0("\tc.test");
	FUNC0(" # not a comment");
	FUNC0("d.test");
}