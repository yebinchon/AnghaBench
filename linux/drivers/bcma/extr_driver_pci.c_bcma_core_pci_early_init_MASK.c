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
struct bcma_drv_pci {int early_setup_done; scalar_t__ hostmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcma_drv_pci*) ; 
 scalar_t__ FUNC1 (struct bcma_drv_pci*) ; 

void FUNC2(struct bcma_drv_pci *pc)
{
	if (pc->early_setup_done)
		return;

	pc->hostmode = FUNC1(pc);
	if (pc->hostmode)
		goto out;

	FUNC0(pc);

out:
	pc->early_setup_done = true;
}