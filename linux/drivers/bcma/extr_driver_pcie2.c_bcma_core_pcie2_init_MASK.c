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
typedef  int u32 ;
struct bcma_drv_pcie2 {int reqsize; TYPE_1__* core; } ;
struct bcma_chipinfo {int id; int rev; } ;
struct bcma_bus {struct bcma_chipinfo chipinfo; } ;
struct TYPE_2__ {struct bcma_bus* bus; } ;

/* Variables and functions */
#define  BCMA_CHIP_ID_BCM4352 129 
#define  BCMA_CHIP_ID_BCM4360 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_drv_pcie2*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_drv_pcie2*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcma_drv_pcie2*,int) ; 
 int FUNC4 (struct bcma_drv_pcie2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bcma_drv_pcie2*) ; 
 int /*<<< orphan*/  FUNC6 (struct bcma_drv_pcie2*) ; 
 int /*<<< orphan*/  FUNC7 (struct bcma_drv_pcie2*) ; 
 int /*<<< orphan*/  FUNC8 (struct bcma_drv_pcie2*) ; 

void FUNC9(struct bcma_drv_pcie2 *pcie2)
{
	struct bcma_bus *bus = pcie2->core->bus;
	struct bcma_chipinfo *ci = &bus->chipinfo;
	u32 tmp;

	tmp = FUNC4(pcie2, FUNC0(54));
	if ((tmp & 0xe) >> 1 == 2)
		FUNC1(pcie2, 0x4e0, 0x17);

	switch (bus->chipinfo.id) {
	case BCMA_CHIP_ID_BCM4360:
	case BCMA_CHIP_ID_BCM4352:
		pcie2->reqsize = 1024;
		break;
	default:
		pcie2->reqsize = 128;
		break;
	}

	if (ci->id == BCMA_CHIP_ID_BCM4360 && ci->rev > 3)
		FUNC3(pcie2, true);
	FUNC2(pcie2);
	FUNC5(pcie2);
	FUNC8(pcie2);
	FUNC6(pcie2);
	FUNC7(pcie2);
}