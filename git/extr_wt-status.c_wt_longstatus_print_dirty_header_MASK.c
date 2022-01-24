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
struct wt_status {int /*<<< orphan*/  hints; } ;

/* Variables and functions */
 int /*<<< orphan*/  WT_STATUS_HEADER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,struct wt_status*) ; 
 int /*<<< orphan*/  FUNC2 (struct wt_status*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct wt_status *s,
					     int has_deleted,
					     int has_dirty_submodules)
{
	const char *c = FUNC1(WT_STATUS_HEADER, s);

	FUNC2(s, c, FUNC0("Changes not staged for commit:"));
	if (!s->hints)
		return;
	if (!has_deleted)
		FUNC2(s, c, FUNC0("  (use \"git add <file>...\" to update what will be committed)"));
	else
		FUNC2(s, c, FUNC0("  (use \"git add/rm <file>...\" to update what will be committed)"));
	FUNC2(s, c, FUNC0("  (use \"git restore <file>...\" to discard changes in working directory)"));
	if (has_dirty_submodules)
		FUNC2(s, c, FUNC0("  (commit or discard the untracked or modified content in submodules)"));
}