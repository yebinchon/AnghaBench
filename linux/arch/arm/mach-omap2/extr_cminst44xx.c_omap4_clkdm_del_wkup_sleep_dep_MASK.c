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
struct clockdomain {int dep_bit; scalar_t__ clkdm_offs; int /*<<< orphan*/  cm_inst; int /*<<< orphan*/  prcm_partition; } ;

/* Variables and functions */
 scalar_t__ OMAP4_CM_STATICDEP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct clockdomain *clkdm1,
					struct clockdomain *clkdm2)
{
	FUNC0((1 << clkdm2->dep_bit),
					 clkdm1->prcm_partition,
					 clkdm1->cm_inst, clkdm1->clkdm_offs +
					 OMAP4_CM_STATICDEP);
	return 0;
}