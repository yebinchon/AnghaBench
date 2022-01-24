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
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(void)
{
	FUNC2(FUNC3("attr/.gitignore"));
	FUNC1(
		"attr/dir/.gitignore",
		"sub/**/*.html\n");

	FUNC0(false, "aaa.html");
	FUNC0(false, "dir");
	FUNC0(false, "dir/sub");
	FUNC0(true,  "dir/sub/sub2/aaa.html");
	FUNC0(true,  "dir/sub/aaa.html");
	FUNC0(false, "dir/aaa.html");
	FUNC0(false, "sub");
	FUNC0(false, "sub/aaa.html");
	FUNC0(false, "sub/sub2/aaa.html");
}