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
typedef  int u8 ;
struct kvm_s390_pgm_info {int flags; int /*<<< orphan*/  code; } ;
struct TYPE_6__ {struct kvm_s390_pgm_info pgm; TYPE_2__* sie_block; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {TYPE_1__ gpsw; } ;

/* Variables and functions */
 int KVM_S390_PGM_FLAGS_ILC_VALID ; 
 int /*<<< orphan*/  PGM_ADDRESSING ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,char*,char*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 
 int FUNC3 (struct kvm_vcpu*,struct kvm_s390_pgm_info*) ; 
 int FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC6(struct kvm_vcpu *vcpu)
{
	struct kvm_s390_pgm_info pgm_info = {
		.code = PGM_ADDRESSING,
	};
	u8 opcode, ilen;
	int rc;

	FUNC0(vcpu, 3, "%s", "fault in sie instruction");
	FUNC5(vcpu);

	/*
	 * We want to inject an addressing exception, which is defined as a
	 * suppressing or terminating exception. However, since we came here
	 * by a DAT access exception, the PSW still points to the faulting
	 * instruction since DAT exceptions are nullifying. So we've got
	 * to look up the current opcode to get the length of the instruction
	 * to be able to forward the PSW.
	 */
	rc = FUNC4(vcpu, vcpu->arch.sie_block->gpsw.addr, &opcode, 1);
	ilen = FUNC1(opcode);
	if (rc < 0) {
		return rc;
	} else if (rc) {
		/* Instruction-Fetching Exceptions - we can't detect the ilen.
		 * Forward by arbitrary ilc, injection will take care of
		 * nullification if necessary.
		 */
		pgm_info = vcpu->arch.pgm;
		ilen = 4;
	}
	pgm_info.flags = ilen | KVM_S390_PGM_FLAGS_ILC_VALID;
	FUNC2(vcpu, ilen);
	return FUNC3(vcpu, &pgm_info);
}