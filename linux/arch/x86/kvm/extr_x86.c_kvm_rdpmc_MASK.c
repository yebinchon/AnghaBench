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
typedef  int /*<<< orphan*/  u32 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int) ; 

bool FUNC4(struct kvm_vcpu *vcpu)
{
	u32 ecx = FUNC2(vcpu);
	u64 data;
	int err;

	err = FUNC0(vcpu, ecx, &data);
	if (err)
		return err;
	FUNC1(vcpu, (u32)data);
	FUNC3(vcpu, data >> 32);
	return err;
}