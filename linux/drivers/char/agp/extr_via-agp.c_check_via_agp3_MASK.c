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
typedef  int u8 ;
struct agp_bridge_data {int /*<<< orphan*/ * driver; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIA_AGPSEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  via_agp3_driver ; 

__attribute__((used)) static void FUNC1 (struct agp_bridge_data *bridge)
{
	u8 reg;

	FUNC0(bridge->dev, VIA_AGPSEL, &reg);
	/* Check AGP 2.0 compatibility mode. */
	if ((reg & (1<<1))==0)
		bridge->driver = &via_agp3_driver;
}