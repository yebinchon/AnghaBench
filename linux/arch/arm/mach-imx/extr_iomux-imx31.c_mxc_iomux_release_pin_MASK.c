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
 unsigned int IOMUX_PADNUM_MASK ; 
 int PIN_MAX ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mxc_pin_alloc_map ; 

void FUNC1(unsigned int pin)
{
	unsigned pad = pin & IOMUX_PADNUM_MASK;

	if (pad < (PIN_MAX + 1))
		FUNC0(pad, mxc_pin_alloc_map);
}