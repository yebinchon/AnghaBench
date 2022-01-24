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
struct TYPE_2__ {unsigned long save_rflags; int /*<<< orphan*/ * segs; scalar_t__ vm86_active; } ;
struct vcpu_vmx {TYPE_1__ rmode; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR4_READ_SHADOW ; 
 int /*<<< orphan*/  GUEST_CR4 ; 
 int /*<<< orphan*/  GUEST_RFLAGS ; 
 unsigned long RMODE_GUEST_OWNED_EFLAGS_BITS ; 
 size_t VCPU_SREG_CS ; 
 size_t VCPU_SREG_DS ; 
 size_t VCPU_SREG_ES ; 
 size_t VCPU_SREG_FS ; 
 size_t VCPU_SREG_GS ; 
 size_t VCPU_SREG_SS ; 
 size_t VCPU_SREG_TR ; 
 unsigned long X86_CR4_VME ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,size_t,int /*<<< orphan*/ *) ; 
 struct vcpu_vmx* FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC8(struct kvm_vcpu *vcpu)
{
	unsigned long flags;
	struct vcpu_vmx *vmx = FUNC1(vcpu);

	/*
	 * Update real mode segment cache. It may be not up-to-date if sement
	 * register was written while vcpu was in a guest mode.
	 */
	FUNC5(vcpu, &vmx->rmode.segs[VCPU_SREG_ES], VCPU_SREG_ES);
	FUNC5(vcpu, &vmx->rmode.segs[VCPU_SREG_DS], VCPU_SREG_DS);
	FUNC5(vcpu, &vmx->rmode.segs[VCPU_SREG_FS], VCPU_SREG_FS);
	FUNC5(vcpu, &vmx->rmode.segs[VCPU_SREG_GS], VCPU_SREG_GS);
	FUNC5(vcpu, &vmx->rmode.segs[VCPU_SREG_SS], VCPU_SREG_SS);
	FUNC5(vcpu, &vmx->rmode.segs[VCPU_SREG_CS], VCPU_SREG_CS);

	vmx->rmode.vm86_active = 0;

	FUNC6(vmx);

	FUNC7(vcpu, &vmx->rmode.segs[VCPU_SREG_TR], VCPU_SREG_TR);

	flags = FUNC3(GUEST_RFLAGS);
	flags &= RMODE_GUEST_OWNED_EFLAGS_BITS;
	flags |= vmx->rmode.save_rflags & ~RMODE_GUEST_OWNED_EFLAGS_BITS;
	FUNC4(GUEST_RFLAGS, flags);

	FUNC4(GUEST_CR4, (FUNC3(GUEST_CR4) & ~X86_CR4_VME) |
			(FUNC3(CR4_READ_SHADOW) & X86_CR4_VME));

	FUNC2(vcpu);

	FUNC0(vcpu, VCPU_SREG_CS, &vmx->rmode.segs[VCPU_SREG_CS]);
	FUNC0(vcpu, VCPU_SREG_SS, &vmx->rmode.segs[VCPU_SREG_SS]);
	FUNC0(vcpu, VCPU_SREG_ES, &vmx->rmode.segs[VCPU_SREG_ES]);
	FUNC0(vcpu, VCPU_SREG_DS, &vmx->rmode.segs[VCPU_SREG_DS]);
	FUNC0(vcpu, VCPU_SREG_FS, &vmx->rmode.segs[VCPU_SREG_FS]);
	FUNC0(vcpu, VCPU_SREG_GS, &vmx->rmode.segs[VCPU_SREG_GS]);
}