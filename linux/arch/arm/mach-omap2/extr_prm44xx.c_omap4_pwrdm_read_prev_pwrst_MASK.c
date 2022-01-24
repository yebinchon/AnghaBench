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
typedef  int u32 ;
struct powerdomain {int /*<<< orphan*/  prcm_offs; int /*<<< orphan*/  prcm_partition; } ;

/* Variables and functions */
 int OMAP4430_LASTPOWERSTATEENTERED_MASK ; 
 int OMAP4430_LASTPOWERSTATEENTERED_SHIFT ; 
 int /*<<< orphan*/  OMAP4_PM_PWSTST ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct powerdomain *pwrdm)
{
	u32 v;

	v = FUNC0(pwrdm->prcm_partition, pwrdm->prcm_offs,
					OMAP4_PM_PWSTST);
	v &= OMAP4430_LASTPOWERSTATEENTERED_MASK;
	v >>= OMAP4430_LASTPOWERSTATEENTERED_SHIFT;

	return v;
}