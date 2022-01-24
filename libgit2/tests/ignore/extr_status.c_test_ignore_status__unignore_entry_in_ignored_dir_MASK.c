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
		"empty_standard_repo/bar.txt",
		"empty_standard_repo/parent/bar.txt",
		"empty_standard_repo/parent/child/bar.txt",
		"empty_standard_repo/nested/parent/child/bar.txt",
		NULL
	};

	FUNC2("empty_standard_repo", test_files);
	FUNC1(
		"empty_standard_repo/.gitignore",
		"bar.txt\n"
		"!parent/child/bar.txt\n");

	FUNC0("bar.txt");
	FUNC0("parent/bar.txt");
	FUNC3("parent/child/bar.txt");
	FUNC0("nested/parent/child/bar.txt");
}