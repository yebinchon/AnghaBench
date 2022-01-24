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
typedef  int u64 ;
typedef  unsigned int u32 ;

/* Variables and functions */
 scalar_t__ EXYNOS4_MCT_G_CNT_L ; 
 scalar_t__ EXYNOS4_MCT_G_CNT_U ; 
 unsigned int FUNC0 (scalar_t__) ; 
 scalar_t__ reg_base ; 

__attribute__((used)) static u64 FUNC1(void)
{
	unsigned int lo, hi;
	u32 hi2 = FUNC0(reg_base + EXYNOS4_MCT_G_CNT_U);

	do {
		hi = hi2;
		lo = FUNC0(reg_base + EXYNOS4_MCT_G_CNT_L);
		hi2 = FUNC0(reg_base + EXYNOS4_MCT_G_CNT_U);
	} while (hi != hi2);

	return ((u64)hi << 32) | lo;
}