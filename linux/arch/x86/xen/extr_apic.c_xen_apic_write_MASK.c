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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ APIC_LVTPC ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(u32 reg, u32 val)
{
	if (reg == APIC_LVTPC) {
		(void)FUNC1(reg);
		return;
	}

	/* Warn to see if there's any stray references */
	FUNC0(1,"register: %x, value: %x\n", reg, val);
}