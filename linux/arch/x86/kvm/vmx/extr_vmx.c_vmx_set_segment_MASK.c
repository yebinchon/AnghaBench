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
struct TYPE_2__ {struct kvm_segment* segs; scalar_t__ vm86_active; } ;
struct vcpu_vmx {int /*<<< orphan*/  emulation_required; TYPE_1__ rmode; } ;
struct kvm_vmx_segment_field {int /*<<< orphan*/  ar_bytes; int /*<<< orphan*/  selector; int /*<<< orphan*/  limit; int /*<<< orphan*/  base; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int type; int /*<<< orphan*/  selector; int /*<<< orphan*/  limit; int /*<<< orphan*/  base; scalar_t__ s; } ;

/* Variables and functions */
 int VCPU_SREG_LDTR ; 
 int VCPU_SREG_TR ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ enable_unrestricted_guest ; 
 int /*<<< orphan*/  FUNC1 (int,struct kvm_segment*) ; 
 struct kvm_vmx_segment_field* kvm_vmx_segment_fields ; 
 struct vcpu_vmx* FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_segment*) ; 
 int /*<<< orphan*/  FUNC7 (struct vcpu_vmx*) ; 

void FUNC8(struct kvm_vcpu *vcpu, struct kvm_segment *var, int seg)
{
	struct vcpu_vmx *vmx = FUNC2(vcpu);
	const struct kvm_vmx_segment_field *sf = &kvm_vmx_segment_fields[seg];

	FUNC7(vmx);

	if (vmx->rmode.vm86_active && seg != VCPU_SREG_LDTR) {
		vmx->rmode.segs[seg] = *var;
		if (seg == VCPU_SREG_TR)
			FUNC3(sf->selector, var->selector);
		else if (var->s)
			FUNC1(seg, &vmx->rmode.segs[seg]);
		goto out;
	}

	FUNC5(sf->base, var->base);
	FUNC4(sf->limit, var->limit);
	FUNC3(sf->selector, var->selector);

	/*
	 *   Fix the "Accessed" bit in AR field of segment registers for older
	 * qemu binaries.
	 *   IA32 arch specifies that at the time of processor reset the
	 * "Accessed" bit in the AR field of segment registers is 1. And qemu
	 * is setting it to 0 in the userland code. This causes invalid guest
	 * state vmexit when "unrestricted guest" mode is turned on.
	 *    Fix for this setup issue in cpu_reset is being pushed in the qemu
	 * tree. Newer qemu binaries with that qemu fix would not need this
	 * kvm hack.
	 */
	if (enable_unrestricted_guest && (seg != VCPU_SREG_LDTR))
		var->type |= 0x1; /* Accessed */

	FUNC4(sf->ar_bytes, FUNC6(var));

out:
	vmx->emulation_required = FUNC0(vcpu);
}