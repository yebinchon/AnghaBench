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
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 scalar_t__ KERNEL_END ; 
 scalar_t__ KERNEL_START ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

phys_addr_t FUNC2(unsigned long x)
{
	/* This is bounds checking against the kernel image only.
	 * __pa_symbol should only be used on kernel symbol addresses.
	 */
	FUNC0(x < (unsigned long)KERNEL_START ||
		       x > (unsigned long)KERNEL_END);

	return FUNC1(x);
}