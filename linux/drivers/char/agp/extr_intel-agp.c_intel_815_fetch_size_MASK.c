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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_APSIZE ; 
 int FUNC0 (int) ; 
 TYPE_1__* agp_bridge ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC2(void)
{
	u8 temp;

	/* Intel 815 chipsets have a _weird_ APSIZE register with only
	 * one non-reserved bit, so mask the others out ... */
	FUNC1(agp_bridge->dev, INTEL_APSIZE, &temp);
	temp &= (1 << 3);

	return FUNC0(temp);
}