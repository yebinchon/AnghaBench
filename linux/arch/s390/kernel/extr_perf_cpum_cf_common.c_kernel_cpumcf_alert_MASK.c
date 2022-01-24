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
struct cpu_cf_events {int /*<<< orphan*/  alert; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_cf_events ; 
 struct cpu_cf_events* FUNC2 (int /*<<< orphan*/ *) ; 

unsigned long FUNC3(int clear)
{
	struct cpu_cf_events *cpuhw = FUNC2(&cpu_cf_events);
	unsigned long alert;

	alert = FUNC0(&cpuhw->alert);
	if (clear)
		FUNC1(&cpuhw->alert, 0);

	return alert;
}