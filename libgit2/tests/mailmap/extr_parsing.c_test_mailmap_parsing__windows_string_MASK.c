#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  g_mailmap ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resolved ; 
 int /*<<< orphan*/  resolved_untracked ; 
 int /*<<< orphan*/  string_mailmap ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	git_buf unixbuf = GIT_BUF_INIT;
	git_buf winbuf = GIT_BUF_INIT;

	/* Parse with windows-style line endings */
	FUNC4(&unixbuf, string_mailmap, FUNC8(string_mailmap));
	FUNC3(FUNC6(&winbuf, &unixbuf));

	FUNC3(FUNC7(&g_mailmap, winbuf.ptr, winbuf.size));
	FUNC5(&winbuf);

	/* We should have parsed all of the entries */
	FUNC1(g_mailmap, entries, FUNC0(entries));

	/* Check that resolving the entries works */
	FUNC2(g_mailmap, resolved, FUNC0(resolved));
	FUNC2(
		g_mailmap, resolved_untracked, FUNC0(resolved_untracked));
}