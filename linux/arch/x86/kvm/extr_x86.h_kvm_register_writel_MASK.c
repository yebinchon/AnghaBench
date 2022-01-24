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
typedef  unsigned long u32 ;
struct kvm_vcpu {int dummy; } ;
typedef  enum kvm_reg { ____Placeholder_kvm_reg } kvm_reg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 void FUNC1 (struct kvm_vcpu*,int,unsigned long) ; 

__attribute__((used)) static inline void FUNC2(struct kvm_vcpu *vcpu,
				       enum kvm_reg reg,
				       unsigned long val)
{
	if (!FUNC0(vcpu))
		val = (u32)val;
	return FUNC1(vcpu, reg, val);
}