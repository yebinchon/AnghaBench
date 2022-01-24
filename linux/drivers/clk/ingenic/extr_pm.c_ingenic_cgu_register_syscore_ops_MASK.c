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
struct ingenic_cgu {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PM_SLEEP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ingenic_cgu_base ; 
 int /*<<< orphan*/  ingenic_cgu_pm_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct ingenic_cgu *cgu)
{
	if (FUNC0(CONFIG_PM_SLEEP)) {
		ingenic_cgu_base = cgu->base;
		FUNC1(&ingenic_cgu_pm_ops);
	}
}