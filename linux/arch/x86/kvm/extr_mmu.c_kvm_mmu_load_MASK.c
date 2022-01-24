#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* tlb_flush ) (struct kvm_vcpu*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 TYPE_1__* kvm_x86_ops ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int) ; 

int FUNC5(struct kvm_vcpu *vcpu)
{
	int r;

	r = FUNC3(vcpu);
	if (r)
		goto out;
	r = FUNC2(vcpu);
	FUNC1(vcpu);
	if (r)
		goto out;
	FUNC0(vcpu);
	kvm_x86_ops->tlb_flush(vcpu, true);
out:
	return r;
}