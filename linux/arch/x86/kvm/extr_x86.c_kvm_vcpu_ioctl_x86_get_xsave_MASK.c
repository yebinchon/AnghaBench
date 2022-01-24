#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct kvm_xsave {int /*<<< orphan*/ * region; } ;
struct TYPE_6__ {TYPE_2__* guest_fpu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct fxregs_state {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  fxsave; } ;
struct TYPE_5__ {TYPE_1__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_XSAVE ; 
 int /*<<< orphan*/  XFEATURE_MASK_FPSSE ; 
 int XSAVE_HDR_OFFSET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_xsave*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu,
					 struct kvm_xsave *guest_xsave)
{
	if (FUNC0(X86_FEATURE_XSAVE)) {
		FUNC3(guest_xsave, 0, sizeof(struct kvm_xsave));
		FUNC1((u8 *) guest_xsave->region, vcpu);
	} else {
		FUNC2(guest_xsave->region,
			&vcpu->arch.guest_fpu->state.fxsave,
			sizeof(struct fxregs_state));
		*(u64 *)&guest_xsave->region[XSAVE_HDR_OFFSET / sizeof(u32)] =
			XFEATURE_MASK_FPSSE;
	}
}