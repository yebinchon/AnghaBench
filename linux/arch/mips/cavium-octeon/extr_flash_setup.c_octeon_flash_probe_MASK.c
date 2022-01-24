#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int base; scalar_t__ width; scalar_t__ en; } ;
union cvmx_mio_boot_reg_cfgx {TYPE_2__ s; int /*<<< orphan*/  u64; } ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_11__ {char* name; int phys; int size; int /*<<< orphan*/  copy_to; int /*<<< orphan*/  copy_from; int /*<<< orphan*/  write; int /*<<< orphan*/  read; scalar_t__ bankwidth; int /*<<< orphan*/  virt; } ;
struct TYPE_10__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (char*,TYPE_5__*) ; 
 TYPE_5__ flash_map ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* mymtd ; 
 int /*<<< orphan*/  octeon_flash_map_copy_from ; 
 int /*<<< orphan*/  octeon_flash_map_copy_to ; 
 int /*<<< orphan*/  octeon_flash_map_read ; 
 int /*<<< orphan*/  octeon_flash_map_write ; 
 int FUNC7 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  part_probe_types ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	union cvmx_mio_boot_reg_cfgx region_cfg;
	u32 cs;
	int r;
	struct device_node *np = pdev->dev.of_node;

	r = FUNC7(np, "reg", &cs);
	if (r)
		return r;

	/*
	 * Read the bootbus region 0 setup to determine the base
	 * address of the flash.
	 */
	region_cfg.u64 = FUNC2(FUNC0(cs));
	if (region_cfg.s.en) {
		/*
		 * The bootloader always takes the flash and sets its
		 * address so the entire flash fits below
		 * 0x1fc00000. This way the flash aliases to
		 * 0x1fc00000 for booting. Software can access the
		 * full flash at the true address, while core boot can
		 * access 4MB.
		 */
		/* Use this name so old part lines work */
		flash_map.name = "phys_mapped_flash";
		flash_map.phys = region_cfg.s.base << 16;
		flash_map.size = 0x1fc00000 - flash_map.phys;
		/* 8-bit bus (0 + 1) or 16-bit bus (1 + 1) */
		flash_map.bankwidth = region_cfg.s.width + 1;
		flash_map.virt = FUNC4(flash_map.phys, flash_map.size);
		FUNC9("Bootbus flash: Setting flash for %luMB flash at "
			  "0x%08llx\n", flash_map.size >> 20, flash_map.phys);
		FUNC1(!FUNC5(flash_map.bankwidth));
		flash_map.read = octeon_flash_map_read;
		flash_map.write = octeon_flash_map_write;
		flash_map.copy_from = octeon_flash_map_copy_from;
		flash_map.copy_to = octeon_flash_map_copy_to;
		mymtd = FUNC3("cfi_probe", &flash_map);
		if (mymtd) {
			mymtd->owner = THIS_MODULE;
			FUNC6(mymtd, part_probe_types,
						  NULL, NULL, 0);
		} else {
			FUNC8("Failed to register MTD device for flash\n");
		}
	}
	return 0;
}