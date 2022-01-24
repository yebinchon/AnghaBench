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
typedef  int u64 ;
struct sthyi_sctns {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  instruction_sthyi; } ;
struct kvm_vcpu {TYPE_4__* run; TYPE_1__ stat; int /*<<< orphan*/  kvm; } ;
struct TYPE_6__ {int* gprs; } ;
struct TYPE_7__ {TYPE_2__ regs; } ;
struct TYPE_8__ {TYPE_3__ s; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PGM_OPERATION ; 
 int /*<<< orphan*/  PGM_SPECIFICATION ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int*,int*) ; 
 int FUNC4 (struct kvm_vcpu*,int) ; 
 int FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int) ; 
 int FUNC7 (struct sthyi_sctns*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,int,int) ; 
 int FUNC10 (struct kvm_vcpu*,int,int,struct sthyi_sctns*,int /*<<< orphan*/ ) ; 

int FUNC11(struct kvm_vcpu *vcpu)
{
	int reg1, reg2, r = 0;
	u64 code, addr, cc = 0, rc = 0;
	struct sthyi_sctns *sctns = NULL;

	if (!FUNC8(vcpu->kvm, 74))
		return FUNC5(vcpu, PGM_OPERATION);

	FUNC3(vcpu, &reg1, &reg2);
	code = vcpu->run->s.regs.gprs[reg1];
	addr = vcpu->run->s.regs.gprs[reg2];

	vcpu->stat.instruction_sthyi++;
	FUNC0(vcpu, 3, "STHYI: fc: %llu addr: 0x%016llx", code, addr);
	FUNC9(vcpu, code, addr);

	if (reg1 == reg2 || reg1 & 1 || reg2 & 1)
		return FUNC5(vcpu, PGM_SPECIFICATION);

	if (code & 0xffff) {
		cc = 3;
		rc = 4;
		goto out;
	}

	if (addr & ~PAGE_MASK)
		return FUNC5(vcpu, PGM_SPECIFICATION);

	sctns = (void *)FUNC2(GFP_KERNEL);
	if (!sctns)
		return -ENOMEM;

	cc = FUNC7(sctns, &rc);

out:
	if (!cc) {
		r = FUNC10(vcpu, addr, reg2, sctns, PAGE_SIZE);
		if (r) {
			FUNC1((unsigned long)sctns);
			return FUNC4(vcpu, r);
		}
	}

	FUNC1((unsigned long)sctns);
	vcpu->run->s.regs.gprs[reg2 + 1] = rc;
	FUNC6(vcpu, cc);
	return r;
}