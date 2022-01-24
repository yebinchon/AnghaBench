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
struct powerdomain {int /*<<< orphan*/  pwrstctrl_offs; int /*<<< orphan*/  prcm_offs; } ;

/* Variables and functions */
 int /*<<< orphan*/  AM33XX_LOWPOWERSTATECHANGE_MASK ; 
 int AM33XX_LOWPOWERSTATECHANGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct powerdomain *pwrdm)
{
	FUNC0(AM33XX_LOWPOWERSTATECHANGE_MASK,
				(1 << AM33XX_LOWPOWERSTATECHANGE_SHIFT),
				pwrdm->prcm_offs, pwrdm->pwrstctrl_offs);
	return 0;
}