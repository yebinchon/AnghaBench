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
struct aper_size_info_16 {int dummy; } ;
struct TYPE_2__ {int gatt_bus_addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  gart_bus_addr; int /*<<< orphan*/  current_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_APERTURE_BAR ; 
 struct aper_size_info_16* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIA_AGP3_ATTBASE ; 
 int /*<<< orphan*/  VIA_AGP3_GARTCTRL ; 
 TYPE_1__* agp_bridge ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(void)
{
	u32 temp;
	struct aper_size_info_16 *current_size;

	current_size = FUNC0(agp_bridge->current_size);

	/* address to map to */
	agp_bridge->gart_bus_addr = FUNC1(agp_bridge->dev,
						    AGP_APERTURE_BAR);

	/* attbase - aperture GATT base */
	FUNC3(agp_bridge->dev, VIA_AGP3_ATTBASE,
		agp_bridge->gatt_bus_addr & 0xfffff000);

	/* 1. Enable GTLB in RX90<7>, all AGP aperture access needs to fetch
	 *    translation table first.
	 * 2. Enable AGP aperture in RX91<0>. This bit controls the enabling of the
	 *    graphics AGP aperture for the AGP3.0 port.
	 */
	FUNC2(agp_bridge->dev, VIA_AGP3_GARTCTRL, &temp);
	FUNC3(agp_bridge->dev, VIA_AGP3_GARTCTRL, temp | (3<<7));
	return 0;
}