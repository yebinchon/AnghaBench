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
struct repository {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RUN_GIT_CMD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*) ; 
 int /*<<< orphan*/  FUNC4 (struct repository*) ; 
 int FUNC5 (char const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct repository *r)
{
	const char *argv[] = { "commit", NULL };

	if (!FUNC2(FUNC3(r)) &&
	    !FUNC2(FUNC4(r)))
		return FUNC1(FUNC0("no cherry-pick or revert in progress"));
	return FUNC5(argv, RUN_GIT_CMD);
}