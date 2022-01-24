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
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void FUNC2(void)
{
	FUNC0("onbranch", "master", true);
	FUNC0("onbranch", "m*", true);
	FUNC0("onbranch", "*", true);
	FUNC0("onbranch", "master/", false);
	FUNC0("onbranch", "foo", false);

	FUNC1(_repo, "foo");
	FUNC0("onbranch", "master", false);
	FUNC0("onbranch", "foo", true);
	FUNC0("onbranch", "f*o", true);

	FUNC1(_repo, "dir/ref");
	FUNC0("onbranch", "dir/ref", true);
	FUNC0("onbranch", "dir/", true);
	FUNC0("onbranch", "dir/*", true);
	FUNC0("onbranch", "dir/**", true);
	FUNC0("onbranch", "**", true);
	FUNC0("onbranch", "dir", false);
	FUNC0("onbranch", "dir*", false);

	FUNC1(_repo, "dir/subdir/ref");
	FUNC0("onbranch", "dir/subdir/", true);
	FUNC0("onbranch", "dir/subdir/*", true);
	FUNC0("onbranch", "dir/subdir/ref", true);
	FUNC0("onbranch", "dir/", true);
	FUNC0("onbranch", "dir/**", true);
	FUNC0("onbranch", "**", true);
	FUNC0("onbranch", "dir", false);
	FUNC0("onbranch", "dir*", false);
	FUNC0("onbranch", "dir/*", false);
}