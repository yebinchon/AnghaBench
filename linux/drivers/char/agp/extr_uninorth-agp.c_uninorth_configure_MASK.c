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
struct aper_size_info_32 {int size_value; } ;
struct TYPE_4__ {int gatt_bus_addr; int gart_bus_addr; int /*<<< orphan*/  scratch_page_page; TYPE_1__* dev; int /*<<< orphan*/  current_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct aper_size_info_32* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNI_N_CFG_AGP_BASE ; 
 int /*<<< orphan*/  UNI_N_CFG_GART_BASE ; 
 int /*<<< orphan*/  UNI_N_CFG_GART_DUMMY_PAGE ; 
 TYPE_2__* agp_bridge ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ is_u3 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(void)
{
	struct aper_size_info_32 *current_size;

	current_size = FUNC0(agp_bridge->current_size);

	FUNC1(&agp_bridge->dev->dev, "configuring for size idx: %d\n",
		 current_size->size_value);

	/* aperture size and gatt addr */
	FUNC3(agp_bridge->dev,
		UNI_N_CFG_GART_BASE,
		(agp_bridge->gatt_bus_addr & 0xfffff000)
			| current_size->size_value);

	/* HACK ALERT
	 * UniNorth seem to be buggy enough not to handle properly when
	 * the AGP aperture isn't mapped at bus physical address 0
	 */
	agp_bridge->gart_bus_addr = 0;
#ifdef CONFIG_PPC64
	/* Assume U3 or later on PPC64 systems */
	/* high 4 bits of GART physical address go in UNI_N_CFG_AGP_BASE */
	pci_write_config_dword(agp_bridge->dev, UNI_N_CFG_AGP_BASE,
			       (agp_bridge->gatt_bus_addr >> 32) & 0xf);
#else
	FUNC3(agp_bridge->dev,
		UNI_N_CFG_AGP_BASE, agp_bridge->gart_bus_addr);
#endif

	if (is_u3) {
		FUNC3(agp_bridge->dev,
				       UNI_N_CFG_GART_DUMMY_PAGE,
				       FUNC2(agp_bridge->scratch_page_page) >> 12);
	}

	return 0;
}