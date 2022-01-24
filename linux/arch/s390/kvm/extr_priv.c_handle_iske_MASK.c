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
struct TYPE_12__ {int /*<<< orphan*/  instruction_iske; } ;
struct kvm_vcpu {TYPE_7__* run; int /*<<< orphan*/  kvm; TYPE_4__ arch; TYPE_1__ stat; } ;
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
 int FUNC2 (TYPE_8__*,unsigned long,unsigned char*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int*,int*) ; 
 int FUNC7 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (struct kvm_vcpu*,unsigned long) ; 
 unsigned long FUNC9 (struct kvm_vcpu*,unsigned long) ; 
 int FUNC10 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct kvm_vcpu *vcpu)
{
	unsigned long gaddr, vmaddr;
	unsigned char key;
	int reg1, reg2;
	bool unlocked;
	int rc;

	vcpu->stat.instruction_iske++;

	if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
		return FUNC7(vcpu, PGM_PRIVILEGED_OP);

	rc = FUNC10(vcpu);
	if (rc)
		return rc != -EAGAIN ? rc : 0;

	FUNC6(vcpu, &reg1, &reg2);

	gaddr = vcpu->run->s.regs.gprs[reg2] & PAGE_MASK;
	gaddr = FUNC8(vcpu, gaddr);
	gaddr = FUNC9(vcpu, gaddr);
	vmaddr = FUNC3(vcpu->kvm, FUNC4(gaddr));
	if (FUNC5(vmaddr))
		return FUNC7(vcpu, PGM_ADDRESSING);
retry:
	unlocked = false;
	FUNC0(&current->mm->mmap_sem);
	rc = FUNC2(current->mm, vmaddr, &key);

	if (rc) {
		rc = FUNC1(current, current->mm, vmaddr,
				      FAULT_FLAG_WRITE, &unlocked);
		if (!rc) {
			FUNC11(&current->mm->mmap_sem);
			goto retry;
		}
	}
	FUNC11(&current->mm->mmap_sem);
	if (rc == -EFAULT)
		return FUNC7(vcpu, PGM_ADDRESSING);
	if (rc < 0)
		return rc;
	vcpu->run->s.regs.gprs[reg1] &= ~0xff;
	vcpu->run->s.regs.gprs[reg1] |= key;
	return 0;
}