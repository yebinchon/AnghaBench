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
 int /*<<< orphan*/  UD_VECTOR ; 
 int /*<<< orphan*/  X86_CR4_DE ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

bool FUNC2(struct kvm_vcpu *vcpu, int dr)
{
	if ((dr != 4 && dr != 5) || !FUNC1(vcpu, X86_CR4_DE))
		return true;

	FUNC0(vcpu, UD_VECTOR);
	return false;
}