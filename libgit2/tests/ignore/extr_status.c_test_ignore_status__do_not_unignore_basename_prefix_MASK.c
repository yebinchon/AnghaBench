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

void FUNC3(void)
{
	static const char *test_files[] = {
		"empty_standard_repo/foo_bar.txt",
		NULL
	};

	FUNC2("empty_standard_repo", test_files);
	FUNC1(
		"empty_standard_repo/.gitignore",
		"foo_bar.txt\n"
		"!bar.txt\n");

	FUNC0("foo_bar.txt");
}