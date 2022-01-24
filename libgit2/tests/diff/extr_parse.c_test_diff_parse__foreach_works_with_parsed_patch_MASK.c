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
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  file_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

void FUNC6(void)
{
	const char patch[] =
	    "diff --git a/obj1 b/obj2\n"
	    "index 1234567..7654321 10644\n"
	    "--- a/obj1\n"
	    "+++ b/obj2\n"
	    "@@ -1 +1 @@\n"
	    "-abcde\n"
	    "+12345\n";
	int called = 0;
	git_diff *diff;

	FUNC1(FUNC4(&diff, patch, FUNC5(patch)));
	FUNC1(FUNC2(diff, file_cb, NULL, NULL, NULL, &called));
	FUNC0(called, 1);

	FUNC3(diff);
}