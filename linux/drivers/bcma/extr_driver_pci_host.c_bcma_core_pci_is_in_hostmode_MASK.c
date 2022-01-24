#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct bcma_drv_pci {TYPE_2__* core; } ;
struct TYPE_3__ {int id; } ;
struct bcma_bus {TYPE_1__ chipinfo; } ;
struct TYPE_4__ {int /*<<< orphan*/  io_addr; struct bcma_bus* bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC2(struct bcma_drv_pci *pc)
{
	struct bcma_bus *bus = pc->core->bus;
	u16 chipid_top;
	u32 tmp;

	chipid_top = (bus->chipinfo.id & 0xFF00);
	if (chipid_top != 0x4700 &&
	    chipid_top != 0x5300)
		return false;

	FUNC0(pc->core, 0);

	return !FUNC1(tmp, pc->core->io_addr);
}