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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ CLK_RST_CONTROLLER_CPU_CMPLX_STATUS ; 
 scalar_t__ clk_base ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(u32 cpu)
{
	unsigned int reg;

	do {
		reg = FUNC1(clk_base + CLK_RST_CONTROLLER_CPU_CMPLX_STATUS);
		FUNC0();
	} while (!(reg & (1 << cpu)));  /* check CPU been reset or not */
}