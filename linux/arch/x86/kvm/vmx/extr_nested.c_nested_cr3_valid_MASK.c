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
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 unsigned long long FUNC0 (struct kvm_vcpu*) ; 

__attribute__((used)) static bool FUNC1(struct kvm_vcpu *vcpu, unsigned long val)
{
	unsigned long invalid_mask;

	invalid_mask = (~0ULL) << FUNC0(vcpu);
	return (val & invalid_mask) == 0;
}