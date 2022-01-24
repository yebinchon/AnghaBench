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

/* Variables and functions */
 int /*<<< orphan*/  EP93XX_SYSCON_DEVCFG ; 
 int /*<<< orphan*/  EP93XX_SYSCON_SWLOCK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  syscon_swlock ; 

void FUNC4(unsigned int set_bits, unsigned int clear_bits)
{
	unsigned long flags;
	unsigned int val;

	FUNC2(&syscon_swlock, flags);

	val = FUNC0(EP93XX_SYSCON_DEVCFG);
	val &= ~clear_bits;
	val |= set_bits;
	FUNC1(0xaa, EP93XX_SYSCON_SWLOCK);
	FUNC1(val, EP93XX_SYSCON_DEVCFG);

	FUNC3(&syscon_swlock, flags);
}