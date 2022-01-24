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
struct index_state {int dummy; } ;
struct grep_source {scalar_t__ driver; scalar_t__ path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct index_state*,scalar_t__) ; 

void FUNC4(struct grep_source *gs,
			     struct index_state *istate)
{
	if (gs->driver)
		return;

	FUNC0();
	if (gs->path)
		gs->driver = FUNC3(istate, gs->path);
	if (!gs->driver)
		gs->driver = FUNC2("default");
	FUNC1();
}