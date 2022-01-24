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
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	size_t nentries, nentries_after;

	nentries = FUNC3(g_repo, GIT_HEAD_FILE);

	FUNC1(FUNC2(g_repo, "refs/heads/haacked"));
	FUNC1(FUNC2(g_repo, "refs/heads/haacked"));

	nentries_after = FUNC3(g_repo, GIT_HEAD_FILE);

	FUNC0(nentries + 1, nentries_after);
}