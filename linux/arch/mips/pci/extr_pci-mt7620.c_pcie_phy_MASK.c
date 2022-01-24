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
 unsigned long ADDR_SHIFT ; 
 unsigned long DATA_SHIFT ; 
 int /*<<< orphan*/  PCIEPHY0_CFG ; 
 unsigned long WRITE_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(unsigned long addr, unsigned long val)
{
	FUNC2();
	FUNC1(WRITE_MODE | (val << DATA_SHIFT) | (addr << ADDR_SHIFT),
		 PCIEPHY0_CFG);
	FUNC0(1);
	FUNC2();
}