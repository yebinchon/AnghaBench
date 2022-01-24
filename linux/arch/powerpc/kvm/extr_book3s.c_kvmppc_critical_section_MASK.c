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
typedef  int ulong ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int MSR_PR ; 
 int MSR_SF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*,int) ; 
 int FUNC3 (struct kvm_vcpu*) ; 

__attribute__((used)) static inline bool FUNC4(struct kvm_vcpu *vcpu)
{
	ulong crit_raw;
	ulong crit_r1;
	bool crit;

	if (FUNC0(vcpu->kvm))
		return false;

	crit_raw = FUNC1(vcpu);
	crit_r1 = FUNC2(vcpu, 1);

	/* Truncate crit indicators in 32 bit mode */
	if (!(FUNC3(vcpu) & MSR_SF)) {
		crit_raw &= 0xffffffff;
		crit_r1 &= 0xffffffff;
	}

	/* Critical section when crit == r1 */
	crit = (crit_raw == crit_r1);
	/* ... and we're in supervisor mode */
	crit = crit && !(FUNC3(vcpu) & MSR_PR);

	return crit;
}