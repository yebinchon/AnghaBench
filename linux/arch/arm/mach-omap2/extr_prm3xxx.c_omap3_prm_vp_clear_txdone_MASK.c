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
typedef  size_t u8 ;
struct omap3_vp {int /*<<< orphan*/  tranxdone_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCP_MOD ; 
 int /*<<< orphan*/  OMAP3_PRM_IRQSTATUS_MPU_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct omap3_vp* omap3_vp ; 

__attribute__((used)) static void FUNC1(u8 vp_id)
{
	struct omap3_vp *vp = &omap3_vp[vp_id];

	FUNC0(vp->tranxdone_status,
				OCP_MOD, OMAP3_PRM_IRQSTATUS_MPU_OFFSET);
}