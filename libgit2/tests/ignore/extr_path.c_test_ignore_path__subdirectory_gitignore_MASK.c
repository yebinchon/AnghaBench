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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(void)
{
	FUNC5("attr/.gitignore");
	FUNC1(!FUNC3("attr/.gitignore"));
	FUNC2(
		"attr/.gitignore",
		"file1\n");
	FUNC4("attr/dir", 0777);
	FUNC2(
		"attr/dir/.gitignore",
		"file2/\n");

	FUNC0(true, "file1");
	FUNC0(true, "dir/file1");
	FUNC0(true, "dir/file2/actual_file");  /* in ignored dir */
	FUNC0(false, "dir/file3");
}