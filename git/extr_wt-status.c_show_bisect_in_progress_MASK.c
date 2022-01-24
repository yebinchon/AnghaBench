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
struct TYPE_2__ {scalar_t__ branch; } ;
struct wt_status {scalar_t__ hints; TYPE_1__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wt_status*,char const*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct wt_status*) ; 

__attribute__((used)) static void FUNC3(struct wt_status *s,
				    const char *color)
{
	if (s->state.branch)
		FUNC1(s, color,
				 FUNC0("You are currently bisecting, started from branch '%s'."),
				 s->state.branch);
	else
		FUNC1(s, color,
				 FUNC0("You are currently bisecting."));
	if (s->hints)
		FUNC1(s, color,
			FUNC0("  (use \"git bisect reset\" to get back to the original branch)"));
	FUNC2(s);
}