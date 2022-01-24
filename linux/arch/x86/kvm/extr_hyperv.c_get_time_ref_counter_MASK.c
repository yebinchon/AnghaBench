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
typedef  scalar_t__ u64 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {scalar_t__ tsc_offset; int /*<<< orphan*/  tsc_scale; int /*<<< orphan*/  tsc_sequence; } ;
struct kvm_hv {TYPE_2__ tsc_ref; } ;
struct TYPE_3__ {struct kvm_hv hyperv; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*) ; 
 struct kvm_vcpu* FUNC2 (struct kvm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static u64 FUNC6(struct kvm *kvm)
{
	struct kvm_hv *hv = &kvm->arch.hyperv;
	struct kvm_vcpu *vcpu;
	u64 tsc;

	/*
	 * The guest has not set up the TSC page or the clock isn't
	 * stable, fall back to get_kvmclock_ns.
	 */
	if (!hv->tsc_ref.tsc_sequence)
		return FUNC0(FUNC1(kvm), 100);

	vcpu = FUNC2(kvm, 0);
	tsc = FUNC3(vcpu, FUNC5());
	return FUNC4(tsc, hv->tsc_ref.tsc_scale, 64)
		+ hv->tsc_ref.tsc_offset;
}