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
typedef  int /*<<< orphan*/  u32 ;
struct powerdomain {int /*<<< orphan*/  pwrstctrl_offs; int /*<<< orphan*/  prcm_offs; int /*<<< orphan*/ * mem_on_mask; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct powerdomain *pwrdm, u8 bank,
		u8 pwrst)
{
	u32 m;

	m = pwrdm->mem_on_mask[bank];
	if (!m)
		return -EINVAL;

	FUNC1(m, (pwrst << FUNC0(m)),
				pwrdm->prcm_offs, pwrdm->pwrstctrl_offs);

	return 0;
}