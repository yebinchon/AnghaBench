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
typedef  int u32 ;
struct powerdomain {int* mem_pwrst_mask; int /*<<< orphan*/  pwrstst_offs; int /*<<< orphan*/  prcm_offs; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct powerdomain *pwrdm, u8 bank)
{
	u32 m, v;

	m = pwrdm->mem_pwrst_mask[bank];
	if (!m)
		return -EINVAL;

	v = FUNC1(pwrdm->prcm_offs, pwrdm->pwrstst_offs);
	v &= m;
	v >>= FUNC0(m);

	return v;
}