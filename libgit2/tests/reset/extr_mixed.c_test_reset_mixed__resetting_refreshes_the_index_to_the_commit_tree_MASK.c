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
 int /*<<< orphan*/  GIT_RESET_MIXED ; 
 unsigned int GIT_STATUS_CURRENT ; 
 unsigned int GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  target ; 

void FUNC5(void)
{
	unsigned int status;

	FUNC1(FUNC4(&status, repo, "macro_bad"));
	FUNC0(status == GIT_STATUS_CURRENT);
	FUNC1(FUNC3(&target, repo, "605812a"));

	FUNC1(FUNC2(repo, target, GIT_RESET_MIXED, NULL));

	FUNC1(FUNC4(&status, repo, "macro_bad"));
	FUNC0(status == GIT_STATUS_WT_NEW);
}