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
struct TYPE_4__ {char* name; unsigned long start; int /*<<< orphan*/  flags; void* end; } ;
struct TYPE_3__ {char* name; unsigned long start; int /*<<< orphan*/  flags; void* end; } ;
struct xtalk_bridge_platform_data {int masterwid; unsigned long mem_offset; unsigned long io_offset; TYPE_2__ io; TYPE_1__ mem; int /*<<< orphan*/  nasid; scalar_t__ intr_addr; int /*<<< orphan*/  bridge_addr; } ;
struct platform_device {int dummy; } ;
typedef  int /*<<< orphan*/  nasid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PI_INT_PEND_MOD ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 void* SWIN_SIZE ; 
 int SWIN_SIZE_BITS ; 
 int /*<<< orphan*/  FUNC3 (struct xtalk_bridge_platform_data*) ; 
 struct xtalk_bridge_platform_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct xtalk_bridge_platform_data*,int) ; 
 struct platform_device* FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(nasid_t nasid, int widget, int masterwid)
{
	struct xtalk_bridge_platform_data *bd;
	struct platform_device *pdev;
	unsigned long offset;

	bd = FUNC4(sizeof(*bd), GFP_KERNEL);
	if (!bd)
		goto no_mem;
	pdev = FUNC7("xtalk-bridge", PLATFORM_DEVID_AUTO);
	if (!pdev) {
		FUNC3(bd);
		goto no_mem;
	}

	offset = FUNC1(nasid);

	bd->bridge_addr = FUNC2(nasid, widget);
	bd->intr_addr	= FUNC0(47) + 0x01800000 + PI_INT_PEND_MOD;
	bd->nasid	= nasid;
	bd->masterwid	= masterwid;

	bd->mem.name	= "Bridge PCI MEM";
	bd->mem.start	= offset + (widget << SWIN_SIZE_BITS);
	bd->mem.end	= bd->mem.start + SWIN_SIZE - 1;
	bd->mem.flags	= IORESOURCE_MEM;
	bd->mem_offset	= offset;

	bd->io.name	= "Bridge PCI IO";
	bd->io.start	= offset + (widget << SWIN_SIZE_BITS);
	bd->io.end	= bd->io.start + SWIN_SIZE - 1;
	bd->io.flags	= IORESOURCE_IO;
	bd->io_offset	= offset;

	FUNC6(pdev, bd, sizeof(*bd));
	FUNC5(pdev);
	FUNC8("xtalk:n%d/%x bridge widget\n", nasid, widget);
	return;

no_mem:
	FUNC9("xtalk:n%d/%x bridge create out of memory\n", nasid, widget);
}