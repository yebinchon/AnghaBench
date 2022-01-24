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
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void)
{
	g_repo = FUNC2("attr");

	FUNC1("attr/.gitignore", "/*.txt\n/dir/\n");
	FUNC3(g_repo);

	FUNC0("root_test4.txt");
	FUNC4("sub/subdir_test2.txt");
	FUNC0("dir");
	FUNC0("dir/");
	FUNC4("sub/dir");
	FUNC4("sub/dir/");
}