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
struct wt_status {scalar_t__ hints; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct wt_status*) ; 
 int /*<<< orphan*/  FUNC2 (struct wt_status*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wt_status*) ; 

__attribute__((used)) static void FUNC4(struct wt_status *s,
				   const char *color)
{
	if (FUNC1(s)) {
		FUNC2(s, color, FUNC0("You have unmerged paths."));
		if (s->hints) {
			FUNC2(s, color,
					 FUNC0("  (fix conflicts and run \"git commit\")"));
			FUNC2(s, color,
					 FUNC0("  (use \"git merge --abort\" to abort the merge)"));
		}
	} else {
		FUNC2(s, color,
			FUNC0("All conflicts fixed but you are still merging."));
		if (s->hints)
			FUNC2(s, color,
				FUNC0("  (use \"git commit\" to conclude merge)"));
	}
	FUNC3(s);
}