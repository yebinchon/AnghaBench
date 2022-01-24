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
 int /*<<< orphan*/  CPU_SOFT_RESET ; 
 int /*<<< orphan*/  RSTOUTn_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	u32 reg;

	/*
	 * Enable and issue soft reset
	 */
	reg = FUNC0(RSTOUTn_MASK);
	reg |= 1 << 2;
	FUNC1(reg, RSTOUTn_MASK);

	reg = FUNC0(CPU_SOFT_RESET);
	reg |= 1;
	FUNC1(reg, CPU_SOFT_RESET);
}