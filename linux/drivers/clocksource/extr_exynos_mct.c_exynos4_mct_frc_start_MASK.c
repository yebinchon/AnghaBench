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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ EXYNOS4_MCT_G_TCON ; 
 int /*<<< orphan*/  MCT_G_TCON_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ reg_base ; 

__attribute__((used)) static void FUNC2(void)
{
	u32 reg;

	reg = FUNC1(reg_base + EXYNOS4_MCT_G_TCON);
	reg |= MCT_G_TCON_START;
	FUNC0(reg, EXYNOS4_MCT_G_TCON);
}