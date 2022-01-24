#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct TYPE_13__ {TYPE_3__* sie_block; } ;
struct TYPE_10__ {int /*<<< orphan*/  instruction_stsi; } ;
struct kvm_vcpu {TYPE_9__* run; TYPE_6__* kvm; TYPE_4__ arch; TYPE_1__ stat; } ;
struct TYPE_16__ {int* gprs; } ;
struct TYPE_17__ {TYPE_7__ regs; } ;
struct TYPE_18__ {TYPE_8__ s; } ;
struct TYPE_14__ {scalar_t__ user_stsi; } ;
struct TYPE_15__ {TYPE_5__ arch; } ;
struct TYPE_11__ {int mask; } ;
struct TYPE_12__ {TYPE_2__ gpsw; } ;

/* Variables and functions */
 int EREMOTE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PGM_PRIVILEGED_OP ; 
 int /*<<< orphan*/  PGM_SPECIFICATION ; 
 int PSW_MASK_PSTATE ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct kvm_vcpu*,int) ; 
 int FUNC7 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC9 (void*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*,int,int,int,int) ; 
 int FUNC11 (struct kvm_vcpu*,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct kvm_vcpu *vcpu)
{
	int fc = (vcpu->run->s.regs.gprs[0] & 0xf0000000) >> 28;
	int sel1 = vcpu->run->s.regs.gprs[0] & 0xff;
	int sel2 = vcpu->run->s.regs.gprs[1] & 0xffff;
	unsigned long mem = 0;
	u64 operand2;
	int rc = 0;
	u8 ar;

	vcpu->stat.instruction_stsi++;
	FUNC0(vcpu, 3, "STSI: fc: %u sel1: %u sel2: %u", fc, sel1, sel2);

	if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
		return FUNC7(vcpu, PGM_PRIVILEGED_OP);

	if (fc > 3) {
		FUNC8(vcpu, 3);
		return 0;
	}

	if (vcpu->run->s.regs.gprs[0] & 0x0fffff00
	    || vcpu->run->s.regs.gprs[1] & 0xffff0000)
		return FUNC7(vcpu, PGM_SPECIFICATION);

	if (fc == 0) {
		vcpu->run->s.regs.gprs[0] = 3 << 28;
		FUNC8(vcpu, 0);
		return 0;
	}

	operand2 = FUNC5(vcpu, &ar);

	if (operand2 & 0xfff)
		return FUNC7(vcpu, PGM_SPECIFICATION);

	switch (fc) {
	case 1: /* same handling for 1 and 2 */
	case 2:
		mem = FUNC2(GFP_KERNEL);
		if (!mem)
			goto out_no_data;
		if (FUNC9((void *) mem, fc, sel1, sel2))
			goto out_no_data;
		break;
	case 3:
		if (sel1 != 2 || sel2 != 2)
			goto out_no_data;
		mem = FUNC2(GFP_KERNEL);
		if (!mem)
			goto out_no_data;
		FUNC3(vcpu, (void *) mem);
		break;
	}

	rc = FUNC11(vcpu, operand2, ar, (void *)mem, PAGE_SIZE);
	if (rc) {
		rc = FUNC6(vcpu, rc);
		goto out;
	}
	if (vcpu->kvm->arch.user_stsi) {
		FUNC4(vcpu, operand2, ar, fc, sel1, sel2);
		rc = -EREMOTE;
	}
	FUNC10(vcpu, fc, sel1, sel2, operand2);
	FUNC1(mem);
	FUNC8(vcpu, 0);
	vcpu->run->s.regs.gprs[0] = 0;
	return rc;
out_no_data:
	FUNC8(vcpu, 3);
out:
	FUNC1(mem);
	return rc;
}