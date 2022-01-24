#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_3__ {int misc_low; int misc_high; int pinbased_ctls_high; } ;
struct TYPE_4__ {TYPE_1__ msrs; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int FUNC1 (int,int) ; 
 int PIN_BASED_VMX_PREEMPTION_TIMER ; 
 int /*<<< orphan*/  FUNC2 (int,int,int const) ; 
 int FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct vcpu_vmx *vmx, u64 data)
{
	const u64 feature_and_reserved_bits =
		/* feature */
		FUNC0(5) | FUNC1(8, 6) | FUNC0(14) | FUNC0(15) |
		FUNC0(28) | FUNC0(29) | FUNC0(30) |
		/* reserved */
		FUNC1(13, 9) | FUNC0(31);
	u64 vmx_misc;

	vmx_misc = FUNC3(vmx->nested.msrs.misc_low,
				   vmx->nested.msrs.misc_high);

	if (!FUNC2(vmx_misc, data, feature_and_reserved_bits))
		return -EINVAL;

	if ((vmx->nested.msrs.pinbased_ctls_high &
	     PIN_BASED_VMX_PREEMPTION_TIMER) &&
	    FUNC7(data) !=
	    FUNC7(vmx_misc))
		return -EINVAL;

	if (FUNC4(data) > FUNC4(vmx_misc))
		return -EINVAL;

	if (FUNC5(data) > FUNC5(vmx_misc))
		return -EINVAL;

	if (FUNC6(data) != FUNC6(vmx_misc))
		return -EINVAL;

	vmx->nested.msrs.misc_low = data;
	vmx->nested.msrs.misc_high = data >> 32;

	return 0;
}