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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  g_mailmap ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resolved ; 
 int /*<<< orphan*/  resolved_bare ; 

void FUNC9(void)
{
	g_repo = FUNC5("mailmap/.gitted");
	FUNC4(FUNC8(g_repo));
	FUNC3(FUNC7(g_repo));

	FUNC4(FUNC6(&g_mailmap, g_repo));

	/* We should have parsed all of the entries, except for the untracked one */
	FUNC1(g_mailmap, entries, FUNC0(entries) - 1);

	/* Check that resolving the entries works */
	FUNC2(g_mailmap, resolved, FUNC0(resolved));
	FUNC2(
		g_mailmap, resolved_bare, FUNC0(resolved_bare));
}