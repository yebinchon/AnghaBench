#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_2__* sie_block; int /*<<< orphan*/  pgm; } ;
struct TYPE_14__ {int /*<<< orphan*/  instruction_pfmf; } ;
struct kvm_vcpu {TYPE_5__* run; TYPE_3__ arch; int /*<<< orphan*/  kvm; TYPE_1__ stat; } ;
struct TYPE_22__ {TYPE_10__* mm; } ;
struct TYPE_21__ {int mask; } ;
struct TYPE_20__ {scalar_t__ eaba; } ;
struct TYPE_17__ {int* gprs; } ;
struct TYPE_19__ {TYPE_4__ regs; } ;
struct TYPE_18__ {TYPE_6__ s; } ;
struct TYPE_15__ {TYPE_8__ gpsw; } ;
struct TYPE_13__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 int /*<<< orphan*/  FAULT_FLAG_WRITE ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SIZE ; 
 int PFMF_CF ; 
 int PFMF_FSC ; 
 unsigned char PFMF_KEY ; 
 int PFMF_MC ; 
 int PFMF_MR ; 
 int PFMF_NQ ; 
 int PFMF_RESERVED ; 
 int PFMF_SK ; 
 int /*<<< orphan*/  PGM_ADDRESSING ; 
 int /*<<< orphan*/  PGM_OPERATION ; 
 int /*<<< orphan*/  PGM_PRIVILEGED_OP ; 
 int /*<<< orphan*/  PGM_SPECIFICATION ; 
 scalar_t__ PSW_BITS_AMODE_24BIT ; 
 scalar_t__ PSW_BITS_AMODE_64BIT ; 
 int PSW_MASK_PSTATE ; 
 int /*<<< orphan*/  _REGION3_SIZE ; 
 int /*<<< orphan*/  _SEGMENT_SIZE ; 
 int FUNC0 (TYPE_10__*,unsigned long,unsigned char,int /*<<< orphan*/ *,int,int,int) ; 
 TYPE_9__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_9__*,TYPE_10__*,unsigned long,int /*<<< orphan*/ ,int*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (unsigned long) ; 
 scalar_t__ FUNC7 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,int*,int*) ; 
 int FUNC9 (struct kvm_vcpu*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC11 (struct kvm_vcpu*,unsigned long) ; 
 unsigned long FUNC12 (struct kvm_vcpu*,unsigned long) ; 
 int FUNC13 (struct kvm_vcpu*) ; 
 TYPE_7__ FUNC14 (TYPE_8__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct kvm_vcpu *vcpu)
{
	bool mr = false, mc = false, nq;
	int reg1, reg2;
	unsigned long start, end;
	unsigned char key;

	vcpu->stat.instruction_pfmf++;

	FUNC8(vcpu, &reg1, &reg2);

	if (!FUNC15(vcpu->kvm, 8))
		return FUNC10(vcpu, PGM_OPERATION);

	if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
		return FUNC10(vcpu, PGM_PRIVILEGED_OP);

	if (vcpu->run->s.regs.gprs[reg1] & PFMF_RESERVED)
		return FUNC10(vcpu, PGM_SPECIFICATION);

	/* Only provide non-quiescing support if enabled for the guest */
	if (vcpu->run->s.regs.gprs[reg1] & PFMF_NQ &&
	    !FUNC15(vcpu->kvm, 14))
		return FUNC10(vcpu, PGM_SPECIFICATION);

	/* Only provide conditional-SSKE support if enabled for the guest */
	if (vcpu->run->s.regs.gprs[reg1] & PFMF_SK &&
	    FUNC15(vcpu->kvm, 10)) {
		mr = vcpu->run->s.regs.gprs[reg1] & PFMF_MR;
		mc = vcpu->run->s.regs.gprs[reg1] & PFMF_MC;
	}

	nq = vcpu->run->s.regs.gprs[reg1] & PFMF_NQ;
	key = vcpu->run->s.regs.gprs[reg1] & PFMF_KEY;
	start = vcpu->run->s.regs.gprs[reg2] & PAGE_MASK;
	start = FUNC11(vcpu, start);

	if (vcpu->run->s.regs.gprs[reg1] & PFMF_CF) {
		if (FUNC7(vcpu, start))
			return FUNC9(vcpu, &vcpu->arch.pgm);
	}

	switch (vcpu->run->s.regs.gprs[reg1] & PFMF_FSC) {
	case 0x00000000:
		/* only 4k frames specify a real address */
		start = FUNC12(vcpu, start);
		end = (start + PAGE_SIZE) & ~(PAGE_SIZE - 1);
		break;
	case 0x00001000:
		end = (start + _SEGMENT_SIZE) & ~(_SEGMENT_SIZE - 1);
		break;
	case 0x00002000:
		/* only support 2G frame size if EDAT2 is available and we are
		   not in 24-bit addressing mode */
		if (!FUNC15(vcpu->kvm, 78) ||
		    FUNC14(vcpu->arch.sie_block->gpsw).eaba == PSW_BITS_AMODE_24BIT)
			return FUNC10(vcpu, PGM_SPECIFICATION);
		end = (start + _REGION3_SIZE) & ~(_REGION3_SIZE - 1);
		break;
	default:
		return FUNC10(vcpu, PGM_SPECIFICATION);
	}

	while (start != end) {
		unsigned long vmaddr;
		bool unlocked = false;

		/* Translate guest address to host address */
		vmaddr = FUNC3(vcpu->kvm, FUNC4(start));
		if (FUNC6(vmaddr))
			return FUNC10(vcpu, PGM_ADDRESSING);

		if (vcpu->run->s.regs.gprs[reg1] & PFMF_CF) {
			if (FUNC5(vcpu->kvm, start, PAGE_SIZE))
				return FUNC10(vcpu, PGM_ADDRESSING);
		}

		if (vcpu->run->s.regs.gprs[reg1] & PFMF_SK) {
			int rc = FUNC13(vcpu);

			if (rc)
				return rc;
			FUNC1(&current->mm->mmap_sem);
			rc = FUNC0(current->mm, vmaddr,
							key, NULL, nq, mr, mc);
			if (rc < 0) {
				rc = FUNC2(current, current->mm, vmaddr,
						      FAULT_FLAG_WRITE, &unlocked);
				rc = !rc ? -EAGAIN : rc;
			}
			FUNC16(&current->mm->mmap_sem);
			if (rc == -EFAULT)
				return FUNC10(vcpu, PGM_ADDRESSING);
			if (rc == -EAGAIN)
				continue;
			if (rc < 0)
				return rc;
		}
		start += PAGE_SIZE;
	}
	if (vcpu->run->s.regs.gprs[reg1] & PFMF_FSC) {
		if (FUNC14(vcpu->arch.sie_block->gpsw).eaba == PSW_BITS_AMODE_64BIT) {
			vcpu->run->s.regs.gprs[reg2] = end;
		} else {
			vcpu->run->s.regs.gprs[reg2] &= ~0xffffffffUL;
			end = FUNC11(vcpu, end);
			vcpu->run->s.regs.gprs[reg2] |= end;
		}
	}
	return 0;
}