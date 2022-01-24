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
typedef  int u16 ;
struct aper_size_info_8 {int /*<<< orphan*/  size_value; } ;
struct TYPE_2__ {int gatt_bus_addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  gart_bus_addr; int /*<<< orphan*/  current_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_APERTURE_BAR ; 
 struct aper_size_info_8* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTEL_AGPCTRL ; 
 int /*<<< orphan*/  INTEL_APSIZE ; 
 int /*<<< orphan*/  INTEL_ATTBASE ; 
 int /*<<< orphan*/  INTEL_I840_ERRSTS ; 
 int /*<<< orphan*/  INTEL_I840_MCHCFG ; 
 TYPE_1__* agp_bridge ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(void)
{
	u16 temp2;
	struct aper_size_info_8 *current_size;

	current_size = FUNC0(agp_bridge->current_size);

	/* aperture size */
	FUNC3(agp_bridge->dev, INTEL_APSIZE, current_size->size_value);

	/* address to map to */
	agp_bridge->gart_bus_addr = FUNC1(agp_bridge->dev,
						    AGP_APERTURE_BAR);

	/* attbase - aperture base */
	FUNC4(agp_bridge->dev, INTEL_ATTBASE, agp_bridge->gatt_bus_addr);

	/* agpctrl */
	FUNC4(agp_bridge->dev, INTEL_AGPCTRL, 0x0000);

	/* mcgcfg */
	FUNC2(agp_bridge->dev, INTEL_I840_MCHCFG, &temp2);
	FUNC5(agp_bridge->dev, INTEL_I840_MCHCFG, temp2 | (1 << 9));
	/* clear any possible error conditions */
	FUNC5(agp_bridge->dev, INTEL_I840_ERRSTS, 0xc000);
	return 0;
}