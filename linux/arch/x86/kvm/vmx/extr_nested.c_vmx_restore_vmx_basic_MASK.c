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
struct TYPE_3__ {int basic; } ;
struct TYPE_4__ {TYPE_1__ msrs; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int const) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct vcpu_vmx *vmx, u64 data)
{
	const u64 feature_and_reserved =
		/* feature (except bit 48; see below) */
		FUNC0(49) | FUNC0(54) | FUNC0(55) |
		/* reserved */
		FUNC0(31) | FUNC1(47, 45) | FUNC1(63, 56);
	u64 vmx_basic = vmx->nested.msrs.basic;

	if (!FUNC2(vmx_basic, data, feature_and_reserved))
		return -EINVAL;

	/*
	 * KVM does not emulate a version of VMX that constrains physical
	 * addresses of VMX structures (e.g. VMCS) to 32-bits.
	 */
	if (data & FUNC0(48))
		return -EINVAL;

	if (FUNC3(vmx_basic) !=
	    FUNC3(data))
		return -EINVAL;

	if (FUNC4(vmx_basic) > FUNC4(data))
		return -EINVAL;

	vmx->nested.msrs.basic = data;
	return 0;
}