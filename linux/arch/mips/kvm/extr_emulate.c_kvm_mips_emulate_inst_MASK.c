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
struct TYPE_5__ {int /*<<< orphan*/  func; } ;
struct TYPE_4__ {int opcode; } ;
union mips_instruction {int /*<<< orphan*/  word; TYPE_2__ spec3_format; TYPE_1__ r_format; } ;
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  cache_exits; } ;
struct kvm_vcpu {TYPE_3__ stat; } ;
struct kvm_run {int dummy; } ;
typedef  enum emulation_result { ____Placeholder_emulation_result } emulation_result ;

/* Variables and functions */
 int CAUSEF_BD ; 
 int EMULATE_DONE ; 
 int EMULATE_FAIL ; 
 int /*<<< orphan*/  KVM_TRACE_EXIT_CACHE ; 
#define  cache6_op 131 
#define  cache_op 130 
#define  cop0_op 129 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int*,struct kvm_vcpu*,int /*<<< orphan*/ *) ; 
 int FUNC3 (union mips_instruction,int*,int,struct kvm_run*,struct kvm_vcpu*) ; 
 int FUNC4 (union mips_instruction,int*,int,struct kvm_run*,struct kvm_vcpu*) ; 
#define  spec3_op 128 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

enum emulation_result FUNC6(u32 cause, u32 *opc,
					    struct kvm_run *run,
					    struct kvm_vcpu *vcpu)
{
	union mips_instruction inst;
	enum emulation_result er = EMULATE_DONE;
	int err;

	/* Fetch the instruction. */
	if (cause & CAUSEF_BD)
		opc += 1;
	err = FUNC2(opc, vcpu, &inst.word);
	if (err)
		return EMULATE_FAIL;

	switch (inst.r_format.opcode) {
	case cop0_op:
		er = FUNC3(inst, opc, cause, run, vcpu);
		break;

#ifndef CONFIG_CPU_MIPSR6
	case cache_op:
		++vcpu->stat.cache_exits;
		FUNC5(vcpu, KVM_TRACE_EXIT_CACHE);
		er = FUNC4(inst, opc, cause, run, vcpu);
		break;
#else
	case spec3_op:
		switch (inst.spec3_format.func) {
		case cache6_op:
			++vcpu->stat.cache_exits;
			trace_kvm_exit(vcpu, KVM_TRACE_EXIT_CACHE);
			er = kvm_mips_emulate_cache(inst, opc, cause, run,
						    vcpu);
			break;
		default:
			goto unknown;
		};
		break;
unknown:
#endif

	default:
		FUNC1("Instruction emulation not supported (%p/%#x)\n", opc,
			inst.word);
		FUNC0(vcpu);
		er = EMULATE_FAIL;
		break;
	}

	return er;
}