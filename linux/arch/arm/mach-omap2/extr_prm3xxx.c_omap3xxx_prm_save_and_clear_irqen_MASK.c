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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  OCP_MOD ; 
 int /*<<< orphan*/  OMAP3_PRM_IRQENABLE_MPU_OFFSET ; 
 int /*<<< orphan*/  OMAP3_PRM_REVISION_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(u32 *saved_mask)
{
	saved_mask[0] = FUNC0(OCP_MOD,
					       OMAP3_PRM_IRQENABLE_MPU_OFFSET);
	FUNC1(0, OCP_MOD, OMAP3_PRM_IRQENABLE_MPU_OFFSET);

	/* OCP barrier */
	FUNC0(OCP_MOD, OMAP3_PRM_REVISION_OFFSET);
}