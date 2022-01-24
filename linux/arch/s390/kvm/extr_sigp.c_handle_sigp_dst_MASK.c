#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  instruction_sigp_unknown; int /*<<< orphan*/  instruction_sigp_cpu_reset; int /*<<< orphan*/  instruction_sigp_init_cpu_reset; int /*<<< orphan*/  instruction_sigp_restart; int /*<<< orphan*/  instruction_sigp_start; int /*<<< orphan*/  instruction_sigp_sense_running; int /*<<< orphan*/  instruction_sigp_cond_emergency; int /*<<< orphan*/  instruction_sigp_prefix; int /*<<< orphan*/  instruction_sigp_store_status; int /*<<< orphan*/  instruction_sigp_stop_store_status; int /*<<< orphan*/  instruction_sigp_stop; int /*<<< orphan*/  instruction_sigp_emergency; int /*<<< orphan*/  instruction_sigp_external_call; int /*<<< orphan*/  instruction_sigp_sense; } ;
struct kvm_vcpu {int /*<<< orphan*/  vcpu_id; TYPE_1__ stat; int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int SIGP_CC_NOT_OPERATIONAL ; 
#define  SIGP_COND_EMERGENCY_SIGNAL 140 
#define  SIGP_CPU_RESET 139 
#define  SIGP_EMERGENCY_SIGNAL 138 
#define  SIGP_EXTERNAL_CALL 137 
#define  SIGP_INITIAL_CPU_RESET 136 
#define  SIGP_RESTART 135 
#define  SIGP_SENSE 134 
#define  SIGP_SENSE_RUNNING 133 
#define  SIGP_SET_PREFIX 132 
#define  SIGP_START 131 
#define  SIGP_STOP 130 
#define  SIGP_STOP_AND_STORE_STATUS 129 
#define  SIGP_STORE_STATUS_AT_ADDRESS 128 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm_vcpu*,struct kvm_vcpu*,int) ; 
 int FUNC2 (struct kvm_vcpu*,struct kvm_vcpu*,int) ; 
 int FUNC3 (struct kvm_vcpu*,struct kvm_vcpu*) ; 
 int FUNC4 (struct kvm_vcpu*,struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct kvm_vcpu*,struct kvm_vcpu*) ; 
 int FUNC6 (struct kvm_vcpu*,struct kvm_vcpu*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct kvm_vcpu*,struct kvm_vcpu*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct kvm_vcpu*,struct kvm_vcpu*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct kvm_vcpu*,struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct kvm_vcpu*,struct kvm_vcpu*) ; 
 int FUNC11 (struct kvm_vcpu*,struct kvm_vcpu*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct kvm_vcpu*,struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct kvm_vcpu* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct kvm_vcpu *vcpu, u8 order_code,
			   u16 cpu_addr, u32 parameter, u64 *status_reg)
{
	int rc;
	struct kvm_vcpu *dst_vcpu = FUNC13(vcpu->kvm, cpu_addr);

	if (!dst_vcpu)
		return SIGP_CC_NOT_OPERATIONAL;

	switch (order_code) {
	case SIGP_SENSE:
		vcpu->stat.instruction_sigp_sense++;
		rc = FUNC7(vcpu, dst_vcpu, status_reg);
		break;
	case SIGP_EXTERNAL_CALL:
		vcpu->stat.instruction_sigp_external_call++;
		rc = FUNC6(vcpu, dst_vcpu, status_reg);
		break;
	case SIGP_EMERGENCY_SIGNAL:
		vcpu->stat.instruction_sigp_emergency++;
		rc = FUNC5(vcpu, dst_vcpu);
		break;
	case SIGP_STOP:
		vcpu->stat.instruction_sigp_stop++;
		rc = FUNC10(vcpu, dst_vcpu);
		break;
	case SIGP_STOP_AND_STORE_STATUS:
		vcpu->stat.instruction_sigp_stop_store_status++;
		rc = FUNC11(vcpu, dst_vcpu, status_reg);
		break;
	case SIGP_STORE_STATUS_AT_ADDRESS:
		vcpu->stat.instruction_sigp_store_status++;
		rc = FUNC12(vcpu, dst_vcpu, parameter,
						 status_reg);
		break;
	case SIGP_SET_PREFIX:
		vcpu->stat.instruction_sigp_prefix++;
		rc = FUNC9(vcpu, dst_vcpu, parameter, status_reg);
		break;
	case SIGP_COND_EMERGENCY_SIGNAL:
		vcpu->stat.instruction_sigp_cond_emergency++;
		rc = FUNC4(vcpu, dst_vcpu, parameter,
						  status_reg);
		break;
	case SIGP_SENSE_RUNNING:
		vcpu->stat.instruction_sigp_sense_running++;
		rc = FUNC8(vcpu, dst_vcpu, status_reg);
		break;
	case SIGP_START:
		vcpu->stat.instruction_sigp_start++;
		rc = FUNC2(vcpu, dst_vcpu, order_code);
		break;
	case SIGP_RESTART:
		vcpu->stat.instruction_sigp_restart++;
		rc = FUNC2(vcpu, dst_vcpu, order_code);
		break;
	case SIGP_INITIAL_CPU_RESET:
		vcpu->stat.instruction_sigp_init_cpu_reset++;
		rc = FUNC1(vcpu, dst_vcpu, order_code);
		break;
	case SIGP_CPU_RESET:
		vcpu->stat.instruction_sigp_cpu_reset++;
		rc = FUNC1(vcpu, dst_vcpu, order_code);
		break;
	default:
		vcpu->stat.instruction_sigp_unknown++;
		rc = FUNC3(vcpu, dst_vcpu);
	}

	if (rc == -EOPNOTSUPP)
		FUNC0(vcpu, 4,
			   "sigp order %u -> cpu %x: handled in user space",
			   order_code, dst_vcpu->vcpu_id);

	return rc;
}