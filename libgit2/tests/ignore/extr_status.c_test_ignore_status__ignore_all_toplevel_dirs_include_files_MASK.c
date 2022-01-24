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
		"empty_standard_repo/README.md",
		"empty_standard_repo/src/main.c",
		"empty_standard_repo/src/foo/foo.c",
		"empty_standard_repo/dist/foo.o",
		"empty_standard_repo/dist/main.o",
		NULL
	};

	FUNC2("empty_standard_repo", test_files);
	FUNC1(
		"empty_standard_repo/.gitignore",
		"/*/\n"
		"!/src\n");

	FUNC0("dist/foo.o");
	FUNC0("dist/main.o");

	FUNC3("README.md");
	FUNC3("src/foo.c");
	FUNC3("src/foo/foo.c");
}