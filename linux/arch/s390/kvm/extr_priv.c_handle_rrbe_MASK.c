#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_3__* sie_block; } ;
struct TYPE_12__ {int /*<<< orphan*/  instruction_rrbe; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; TYPE_7__* run; TYPE_4__ arch; TYPE_1__ stat; } ;
struct TYPE_20__ {TYPE_8__* mm; } ;
struct TYPE_19__ {int /*<<< orphan*/  mmap_sem; } ;
struct TYPE_16__ {unsigned long* gprs; } ;
struct TYPE_17__ {TYPE_5__ regs; } ;
struct TYPE_18__ {TYPE_6__ s; } ;
struct TYPE_13__ {int mask; } ;
struct TYPE_14__ {TYPE_2__ gpsw; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 int /*<<< orphan*/  FAULT_FLAG_WRITE ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  PGM_ADDRESSING ; 
 int /*<<< orphan*/  PGM_PRIVILEGED_OP ; 
 int PSW_MASK_PSTATE ; 
 TYPE_9__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_9__*,TYPE_8__*,unsigned long,int /*<<< orphan*/ ,int*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int*,int*) ; 
 int FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (struct kvm_vcpu*,unsigned long) ; 
 unsigned long FUNC8 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,int) ; 
 int FUNC10 (TYPE_8__*,unsigned long) ; 
 int FUNC11 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct kvm_vcpu *vcpu)
{
	unsigned long vmaddr, gaddr;
	int reg1, reg2;
	bool unlocked;
	int rc;

	vcpu->stat.instruction_rrbe++;

	if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
		return FUNC6(vcpu, PGM_PRIVILEGED_OP);

	rc = FUNC11(vcpu);
	if (rc)
		return rc != -EAGAIN ? rc : 0;

	FUNC5(vcpu, &reg1, &reg2);

	gaddr = vcpu->run->s.regs.gprs[reg2] & PAGE_MASK;
	gaddr = FUNC7(vcpu, gaddr);
	gaddr = FUNC8(vcpu, gaddr);
	vmaddr = FUNC2(vcpu->kvm, FUNC3(gaddr));
	if (FUNC4(vmaddr))
		return FUNC6(vcpu, PGM_ADDRESSING);
retry:
	unlocked = false;
	FUNC0(&current->mm->mmap_sem);
	rc = FUNC10(current->mm, vmaddr);
	if (rc < 0) {
		rc = FUNC1(current, current->mm, vmaddr,
				      FAULT_FLAG_WRITE, &unlocked);
		if (!rc) {
			FUNC12(&current->mm->mmap_sem);
			goto retry;
		}
	}
	FUNC12(&current->mm->mmap_sem);
	if (rc == -EFAULT)
		return FUNC6(vcpu, PGM_ADDRESSING);
	if (rc < 0)
		return rc;
	FUNC9(vcpu, rc);
	return 0;
}