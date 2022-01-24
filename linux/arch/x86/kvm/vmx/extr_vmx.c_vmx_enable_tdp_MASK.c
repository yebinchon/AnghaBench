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
 unsigned long long VMX_EPT_ACCESS_BIT ; 
 unsigned long long VMX_EPT_DIRTY_BIT ; 
 int /*<<< orphan*/  VMX_EPT_EXECUTABLE_MASK ; 
 unsigned long long VMX_EPT_READABLE_MASK ; 
 int /*<<< orphan*/  VMX_EPT_RWX_MASK ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ enable_ept_ad_bits ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long,unsigned long long,unsigned long long,unsigned long long,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC3(VMX_EPT_READABLE_MASK,
		enable_ept_ad_bits ? VMX_EPT_ACCESS_BIT : 0ull,
		enable_ept_ad_bits ? VMX_EPT_DIRTY_BIT : 0ull,
		0ull, VMX_EPT_EXECUTABLE_MASK,
		FUNC0() ? 0ull : VMX_EPT_READABLE_MASK,
		VMX_EPT_RWX_MASK, 0ull);

	FUNC1();
	FUNC2();
}