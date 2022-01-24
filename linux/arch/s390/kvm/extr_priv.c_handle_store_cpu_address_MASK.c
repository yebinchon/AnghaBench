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
typedef  int /*<<< orphan*/  vcpu_id ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_8__ {TYPE_3__* sie_block; } ;
struct TYPE_5__ {int /*<<< orphan*/  instruction_stap; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_1__ stat; int /*<<< orphan*/  vcpu_id; } ;
struct TYPE_6__ {int mask; } ;
struct TYPE_7__ {TYPE_2__ gpsw; } ;

/* Variables and functions */
 int /*<<< orphan*/  PGM_PRIVILEGED_OP ; 
 int /*<<< orphan*/  PGM_SPECIFICATION ; 
 int PSW_MASK_PSTATE ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct kvm_vcpu*,int) ; 
 int FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int) ; 
 int FUNC5 (struct kvm_vcpu*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct kvm_vcpu *vcpu)
{
	u16 vcpu_id = vcpu->vcpu_id;
	u64 ga;
	int rc;
	u8 ar;

	vcpu->stat.instruction_stap++;

	if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
		return FUNC3(vcpu, PGM_PRIVILEGED_OP);

	ga = FUNC1(vcpu, &ar);

	if (ga & 1)
		return FUNC3(vcpu, PGM_SPECIFICATION);

	rc = FUNC5(vcpu, ga, ar, &vcpu_id, sizeof(vcpu_id));
	if (rc)
		return FUNC2(vcpu, rc);

	FUNC0(vcpu, 3, "STAP: storing cpu address (%u) to 0x%llx", vcpu_id, ga);
	FUNC4(vcpu, ga);
	return 0;
}