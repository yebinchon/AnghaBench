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
 unsigned long CAUSEB_IP ; 
 unsigned long cp0_compare_irq_shift ; 
 unsigned long FUNC0 () ; 

__attribute__((used)) static int FUNC1(void)
{
	/* When cpu_has_mips_r2, this checks Cause.TI instead of Cause.IP7 */
	return (FUNC0() >> cp0_compare_irq_shift) & (1ul << CAUSEB_IP);
}