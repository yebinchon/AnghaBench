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
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu, u64 result)
{
	bool longmode;

	longmode = FUNC0(vcpu);
	if (longmode)
		FUNC1(vcpu, result);
	else {
		FUNC2(vcpu, result >> 32);
		FUNC1(vcpu, result & 0xffffffff);
	}
}