#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ am_empty_patch; } ;
struct wt_status {TYPE_1__ state; scalar_t__ hints; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wt_status*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wt_status*) ; 

__attribute__((used)) static void FUNC3(struct wt_status *s,
				const char *color)
{
	FUNC1(s, color,
		FUNC0("You are in the middle of an am session."));
	if (s->state.am_empty_patch)
		FUNC1(s, color,
			FUNC0("The current patch is empty."));
	if (s->hints) {
		if (!s->state.am_empty_patch)
			FUNC1(s, color,
				FUNC0("  (fix conflicts and then run \"git am --continue\")"));
		FUNC1(s, color,
			FUNC0("  (use \"git am --skip\" to skip this patch)"));
		FUNC1(s, color,
			FUNC0("  (use \"git am --abort\" to restore the original branch)"));
	}
	FUNC2(s);
}