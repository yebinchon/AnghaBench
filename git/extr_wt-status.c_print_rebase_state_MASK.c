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
struct TYPE_2__ {int /*<<< orphan*/  onto; scalar_t__ branch; } ;
struct wt_status {TYPE_1__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wt_status*,char const*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC2(struct wt_status *s,
			       const char *color)
{
	if (s->state.branch)
		FUNC1(s, color,
				 FUNC0("You are currently rebasing branch '%s' on '%s'."),
				 s->state.branch,
				 s->state.onto);
	else
		FUNC1(s, color,
				 FUNC0("You are currently rebasing."));
}