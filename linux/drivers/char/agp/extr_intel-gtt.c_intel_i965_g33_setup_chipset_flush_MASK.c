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
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_3__ {int start; scalar_t__ end; } ;
struct TYPE_4__ {int resource_valid; TYPE_1__ ifp_resource; int /*<<< orphan*/  bridge_dev; } ;

/* Variables and functions */
 scalar_t__ I965_IFPADDR ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__ intel_private ; 
 int /*<<< orphan*/  iomem_resource ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void)
{
	u32 temp_hi, temp_lo;
	int ret;

	FUNC1(intel_private.bridge_dev, I965_IFPADDR + 4, &temp_hi);
	FUNC1(intel_private.bridge_dev, I965_IFPADDR, &temp_lo);

	if (!(temp_lo & 0x1)) {

		FUNC0();

		intel_private.resource_valid = 1;
		FUNC2(intel_private.bridge_dev, I965_IFPADDR + 4,
			FUNC4(intel_private.ifp_resource.start));
		FUNC2(intel_private.bridge_dev, I965_IFPADDR, (intel_private.ifp_resource.start & 0xffffffff) | 0x1);
	} else {
		u64 l64;

		temp_lo &= ~0x1;
		l64 = ((u64)temp_hi << 32) | temp_lo;

		intel_private.resource_valid = 1;
		intel_private.ifp_resource.start = l64;
		intel_private.ifp_resource.end = l64 + PAGE_SIZE;
		ret = FUNC3(&iomem_resource, &intel_private.ifp_resource);
		/* some BIOSes reserve this area in a pnp some don't */
		if (ret)
			intel_private.resource_valid = 0;
	}
}