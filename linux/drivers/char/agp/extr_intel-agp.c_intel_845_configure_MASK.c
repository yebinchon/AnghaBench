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
typedef  int u8 ;
struct aper_size_info_8 {int size_value; } ;
struct TYPE_2__ {scalar_t__ apbase_config; int gart_bus_addr; int gatt_bus_addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  current_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_APBASE ; 
 int /*<<< orphan*/  AGP_APERTURE_BAR ; 
 struct aper_size_info_8* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTEL_AGPCTRL ; 
 int /*<<< orphan*/  INTEL_APSIZE ; 
 int /*<<< orphan*/  INTEL_ATTBASE ; 
 int /*<<< orphan*/  INTEL_I845_AGPM ; 
 int /*<<< orphan*/  INTEL_I845_ERRSTS ; 
 TYPE_1__* agp_bridge ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(void)
{
	u8 temp2;
	struct aper_size_info_8 *current_size;

	current_size = FUNC0(agp_bridge->current_size);

	/* aperture size */
	FUNC3(agp_bridge->dev, INTEL_APSIZE, current_size->size_value);

	if (agp_bridge->apbase_config != 0) {
		FUNC4(agp_bridge->dev, AGP_APBASE,
				       agp_bridge->apbase_config);
	} else {
		/* address to map to */
		agp_bridge->gart_bus_addr = FUNC1(agp_bridge->dev,
							    AGP_APERTURE_BAR);
		agp_bridge->apbase_config = agp_bridge->gart_bus_addr;
	}

	/* attbase - aperture base */
	FUNC4(agp_bridge->dev, INTEL_ATTBASE, agp_bridge->gatt_bus_addr);

	/* agpctrl */
	FUNC4(agp_bridge->dev, INTEL_AGPCTRL, 0x0000);

	/* agpm */
	FUNC2(agp_bridge->dev, INTEL_I845_AGPM, &temp2);
	FUNC3(agp_bridge->dev, INTEL_I845_AGPM, temp2 | (1 << 1));
	/* clear any possible error conditions */
	FUNC5(agp_bridge->dev, INTEL_I845_ERRSTS, 0x001c);
	return 0;
}