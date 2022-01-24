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
 int /*<<< orphan*/  FETCH_HEAD_WILDCARD_DATA ; 
 int /*<<< orphan*/  FETCH_HEAD_WILDCARD_DATA2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void FUNC4(void)
{
	FUNC1();
	FUNC2(NULL, FETCH_HEAD_WILDCARD_DATA2);
	FUNC0(FUNC3(g_repo, "annotated_tag"));
	FUNC0(FUNC3(g_repo, "blob"));
	FUNC0(FUNC3(g_repo, "commit_tree"));
	FUNC0(FUNC3(g_repo, "nearly-dangling"));
	FUNC2(NULL, FETCH_HEAD_WILDCARD_DATA);
}