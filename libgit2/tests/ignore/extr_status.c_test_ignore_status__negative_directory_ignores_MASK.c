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
		"empty_standard_repo/parent/child1/bar.txt",
		"empty_standard_repo/parent/child2/bar.txt",
		"empty_standard_repo/parent/child3/foo.txt",
		"empty_standard_repo/parent/child4/bar.txt",
		"empty_standard_repo/parent/nested/child5/bar.txt",
		"empty_standard_repo/parent/nested/child6/bar.txt",
		"empty_standard_repo/parent/nested/child7/bar.txt",
		"empty_standard_repo/padded_parent/child8/bar.txt",
		NULL
	};

	FUNC2("empty_standard_repo", test_files);
	FUNC1(
		"empty_standard_repo/.gitignore",
		"foo.txt\n"
		"parent/child1\n"
		"parent/child2\n"
		"parent/child4\n"
		"parent/nested/child5\n"
		"nested/child6\n"
		"nested/child7\n"
		"padded_parent/child8\n"
		/* test simple exact match */
		"!parent/child1\n"
		/* test negating file without negating dir */
		"!parent/child2/bar.txt\n"
		/* test negative pattern on dir with its content
		 * being ignored */
		"!parent/child3\n"
		/* test with partial match at end */
		"!child4\n"
		/* test with partial match with '/' at end */
		"!nested/child5\n"
		/* test with complete match */
		"!nested/child6\n"
		/* test with trailing '/' */
		"!child7/\n"
		/* test with partial dir match */
		"!_parent/child8\n");

	FUNC3("parent/child1/bar.txt");
	FUNC0("parent/child2/bar.txt");
	FUNC0("parent/child3/foo.txt");
	FUNC3("parent/child4/bar.txt");
	FUNC0("parent/nested/child5/bar.txt");
	FUNC3("parent/nested/child6/bar.txt");
	FUNC3("parent/nested/child7/bar.txt");
	FUNC0("padded_parent/child8/bar.txt");
}