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
 int CACHE_CTL_mskDC_EN ; 
 int CACHE_CTL_mskIC_EN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  NDS32_SR_CACHE_CTL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(unsigned long reset)
{
	u32 tmp;
	FUNC0();
	tmp = FUNC1(NDS32_SR_CACHE_CTL);
	tmp &= ~(CACHE_CTL_mskIC_EN | CACHE_CTL_mskDC_EN);
	FUNC2(tmp, NDS32_SR_CACHE_CTL);
	FUNC3();
	FUNC4();

	__asm__ __volatile__("jr.toff %0\n\t"::"r"(reset));
}