#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct TYPE_8__ {TYPE_3__* sie_block; } ;
struct TYPE_5__ {int /*<<< orphan*/  instruction_stctg; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_1__ stat; } ;
struct TYPE_6__ {int mask; } ;
struct TYPE_7__ {int ipa; int* gcr; TYPE_2__ gpsw; } ;

/* Variables and functions */
 int /*<<< orphan*/  PGM_PRIVILEGED_OP ; 
 int /*<<< orphan*/  PGM_SPECIFICATION ; 
 int PSW_MASK_PSTATE ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,char*,int,int,int) ; 
 int FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct kvm_vcpu*,int) ; 
 int FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int,int,int,int) ; 
 int FUNC5 (struct kvm_vcpu*,int,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC6(struct kvm_vcpu *vcpu)
{
	int reg1 = (vcpu->arch.sie_block->ipa & 0x00f0) >> 4;
	int reg3 = vcpu->arch.sie_block->ipa & 0x000f;
	int reg, rc, nr_regs;
	u64 ctl_array[16];
	u64 ga;
	u8 ar;

	vcpu->stat.instruction_stctg++;

	if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
		return FUNC3(vcpu, PGM_PRIVILEGED_OP);

	ga = FUNC1(vcpu, &ar);

	if (ga & 7)
		return FUNC3(vcpu, PGM_SPECIFICATION);

	FUNC0(vcpu, 4, "STCTG r1:%d, r3:%d, addr: 0x%llx", reg1, reg3, ga);
	FUNC4(vcpu, 1, reg1, reg3, ga);

	reg = reg1;
	nr_regs = 0;
	do {
		ctl_array[nr_regs++] = vcpu->arch.sie_block->gcr[reg];
		if (reg == reg3)
			break;
		reg = (reg + 1) % 16;
	} while (1);
	rc = FUNC5(vcpu, ga, ar, ctl_array, nr_regs * sizeof(u64));
	return rc ? FUNC2(vcpu, rc) : 0;
}