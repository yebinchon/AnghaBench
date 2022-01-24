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
 int EINVAL ; 
 int /*<<< orphan*/  MPI_CSCTL_ENABLE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  bcm63xx_cs_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(unsigned int cs, int enable)
{
	unsigned long flags;
	u32 val;

	if (!FUNC3(cs))
		return -EINVAL;

	FUNC4(&bcm63xx_cs_lock, flags);
	val = FUNC1(FUNC0(cs));
	if (enable)
		val |= MPI_CSCTL_ENABLE_MASK;
	else
		val &= ~MPI_CSCTL_ENABLE_MASK;
	FUNC2(val, FUNC0(cs));
	FUNC5(&bcm63xx_cs_lock, flags);
	return 0;
}