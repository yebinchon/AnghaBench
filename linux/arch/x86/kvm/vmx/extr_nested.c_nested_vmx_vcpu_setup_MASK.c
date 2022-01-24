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
 int /*<<< orphan*/  VMREAD_BITMAP ; 
 int /*<<< orphan*/  VMWRITE_BITMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ enable_shadow_vmcs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmx_vmread_bitmap ; 
 int /*<<< orphan*/  vmx_vmwrite_bitmap ; 

void FUNC2(void)
{
	if (enable_shadow_vmcs) {
		FUNC1(VMREAD_BITMAP, FUNC0(vmx_vmread_bitmap));
		FUNC1(VMWRITE_BITMAP, FUNC0(vmx_vmwrite_bitmap));
	}
}