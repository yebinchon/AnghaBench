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
typedef  int u32 ;
struct TYPE_8__ {TYPE_3__* sie_block; } ;
struct TYPE_5__ {int /*<<< orphan*/  instruction_spx; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; TYPE_4__ arch; TYPE_1__ stat; } ;
typedef  int /*<<< orphan*/  address ;
struct TYPE_6__ {int mask; } ;
struct TYPE_7__ {TYPE_2__ gpsw; } ;

/* Variables and functions */
 int /*<<< orphan*/  PGM_ADDRESSING ; 
 int /*<<< orphan*/  PGM_PRIVILEGED_OP ; 
 int /*<<< orphan*/  PGM_SPECIFICATION ; 
 int PSW_MASK_PSTATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct kvm_vcpu*,int) ; 
 int FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int) ; 
 int FUNC5 (struct kvm_vcpu*,int,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int,int) ; 

__attribute__((used)) static int FUNC7(struct kvm_vcpu *vcpu)
{
	u64 operand2;
	u32 address;
	int rc;
	u8 ar;

	vcpu->stat.instruction_spx++;

	if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
		return FUNC3(vcpu, PGM_PRIVILEGED_OP);

	operand2 = FUNC1(vcpu, &ar);

	/* must be word boundary */
	if (operand2 & 3)
		return FUNC3(vcpu, PGM_SPECIFICATION);

	/* get the value */
	rc = FUNC5(vcpu, operand2, ar, &address, sizeof(address));
	if (rc)
		return FUNC2(vcpu, rc);

	address &= 0x7fffe000u;

	/*
	 * Make sure the new value is valid memory. We only need to check the
	 * first page, since address is 8k aligned and memory pieces are always
	 * at least 1MB aligned and have at least a size of 1MB.
	 */
	if (FUNC0(vcpu->kvm, address))
		return FUNC3(vcpu, PGM_ADDRESSING);

	FUNC4(vcpu, address);
	FUNC6(vcpu, 1, address);
	return 0;
}