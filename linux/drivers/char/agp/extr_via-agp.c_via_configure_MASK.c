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
struct aper_size_info_8 {int /*<<< orphan*/  size_value; } ;
struct TYPE_2__ {int gatt_bus_addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  gart_bus_addr; int /*<<< orphan*/  current_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_APERTURE_BAR ; 
 struct aper_size_info_8* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIA_APSIZE ; 
 int /*<<< orphan*/  VIA_ATTBASE ; 
 int /*<<< orphan*/  VIA_GARTCTRL ; 
 TYPE_1__* agp_bridge ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(void)
{
	struct aper_size_info_8 *current_size;

	current_size = FUNC0(agp_bridge->current_size);
	/* aperture size */
	FUNC2(agp_bridge->dev, VIA_APSIZE,
			      current_size->size_value);
	/* address to map to */
	agp_bridge->gart_bus_addr = FUNC1(agp_bridge->dev,
						    AGP_APERTURE_BAR);

	/* GART control register */
	FUNC3(agp_bridge->dev, VIA_GARTCTRL, 0x0000000f);

	/* attbase - aperture GATT base */
	FUNC3(agp_bridge->dev, VIA_ATTBASE,
			    (agp_bridge->gatt_bus_addr & 0xfffff000) | 3);
	return 0;
}