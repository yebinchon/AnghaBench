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
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GAFR ; 
 int /*<<< orphan*/  GPDR ; 
 int /*<<< orphan*/  GPIO_32_768kHz ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	unsigned long flags;

	/*
	 * First, set up the 3.6864MHz clock on GPIO 27 for the SA-1111:
	 * (SA-1110 Developer's Manual, section 9.1.2.1)
	 */
	FUNC1(flags);
	GAFR |= GPIO_32_768kHz;
	GPDR |= GPIO_32_768kHz;
	FUNC0(flags);

	return 0;
}