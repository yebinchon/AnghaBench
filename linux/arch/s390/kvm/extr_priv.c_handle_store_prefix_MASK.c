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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {TYPE_3__* sie_block; } ;
struct TYPE_5__ {int /*<<< orphan*/  instruction_stpx; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_1__ stat; } ;
typedef  int /*<<< orphan*/  address ;
struct TYPE_6__ {int mask; } ;
struct TYPE_7__ {TYPE_2__ gpsw; } ;

/* Variables and functions */
 int /*<<< orphan*/  PGM_PRIVILEGED_OP ; 
 int /*<<< orphan*/  PGM_SPECIFICATION ; 
 int PSW_MASK_PSTATE ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (struct kvm_vcpu*,int) ; 
 int FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct kvm_vcpu*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct kvm_vcpu *vcpu)
{
	u64 operand2;
	u32 address;
	int rc;
	u8 ar;

	vcpu->stat.instruction_stpx++;

	if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
		return FUNC4(vcpu, PGM_PRIVILEGED_OP);

	operand2 = FUNC1(vcpu, &ar);

	/* must be word boundary */
	if (operand2 & 3)
		return FUNC4(vcpu, PGM_SPECIFICATION);

	address = FUNC2(vcpu);

	/* get the value */
	rc = FUNC6(vcpu, operand2, ar, &address, sizeof(address));
	if (rc)
		return FUNC3(vcpu, rc);

	FUNC0(vcpu, 3, "STPX: storing prefix 0x%x into 0x%llx", address, operand2);
	FUNC5(vcpu, 0, address);
	return 0;
}