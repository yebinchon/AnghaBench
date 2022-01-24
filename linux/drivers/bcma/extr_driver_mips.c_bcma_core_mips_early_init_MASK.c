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
struct bcma_drv_mips {int early_setup_done; TYPE_1__* core; } ;
struct bcma_bus {int /*<<< orphan*/  drv_cc; } ;
struct TYPE_2__ {struct bcma_bus* bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_drv_mips*) ; 

void FUNC2(struct bcma_drv_mips *mcore)
{
	struct bcma_bus *bus = mcore->core->bus;

	if (mcore->early_setup_done)
		return;

	FUNC0(&bus->drv_cc);
	FUNC1(mcore);

	mcore->early_setup_done = true;
}