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
struct worktree {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 char const* FUNC0 () ; 
 char const* FUNC1 () ; 
 char const* FUNC2 (char*,int /*<<< orphan*/ ) ; 

const char *FUNC3(const struct worktree *wt)
{
	if (!wt)
		return FUNC1();
	else if (!wt->id)
		return FUNC0();
	else
		return FUNC2("worktrees/%s", wt->id);
}