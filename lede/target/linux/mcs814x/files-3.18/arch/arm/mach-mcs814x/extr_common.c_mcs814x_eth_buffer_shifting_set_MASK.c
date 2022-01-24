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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 scalar_t__ BUF_SHIFT_BIT ; 
 scalar_t__ SYSDBG_SYSCTL_MAC ; 
 scalar_t__ mcs814x_sysdbg_base ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC2(u8 value)
{
	u8 reg;

	reg = FUNC0(mcs814x_sysdbg_base + SYSDBG_SYSCTL_MAC);
	if (value)
		reg |= BUF_SHIFT_BIT;
	else
		reg &= ~BUF_SHIFT_BIT;
	FUNC1(reg, mcs814x_sysdbg_base + SYSDBG_SYSCTL_MAC);
}