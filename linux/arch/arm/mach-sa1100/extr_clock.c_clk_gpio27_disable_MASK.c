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

__attribute__((used)) static void FUNC2(struct clk_hw *hw)
{
	unsigned long flags;

	FUNC1(flags);
	GPDR &= ~GPIO_32_768kHz;
	GAFR &= ~GPIO_32_768kHz;
	FUNC0(flags);
}