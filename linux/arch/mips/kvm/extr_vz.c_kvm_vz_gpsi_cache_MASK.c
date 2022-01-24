#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t rs; size_t rt; unsigned long simmediate; } ;
struct TYPE_3__ {unsigned long simmediate; } ;
union mips_instruction {TYPE_2__ i_format; TYPE_1__ spec3_format; } ;
typedef  size_t u32 ;
struct kvm_vcpu_arch {unsigned long pc; unsigned long* gprs; } ;
struct kvm_vcpu {struct kvm_vcpu_arch arch; } ;
struct kvm_run {int dummy; } ;
typedef  unsigned long s16 ;
typedef  enum emulation_result { ____Placeholder_emulation_result } emulation_result ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_CAVIUM_OCTEON3 ; 
 size_t CacheOp_Cache ; 
 size_t CacheOp_Op ; 
 size_t Cache_D ; 
 size_t Cache_I ; 
 int EMULATE_DONE ; 
 int EMULATE_FAIL ; 
#define  Hit_Invalidate_D 132 
#define  Hit_Invalidate_I 131 
#define  Hit_Writeback_Inv_D 130 
#define  Index_Invalidate_I 129 
#define  Index_Writeback_Inv_D 128 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ cpu_has_mips_r6 ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,size_t,size_t,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,unsigned long,size_t,size_t,size_t,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct kvm_vcpu*,size_t) ; 

__attribute__((used)) static enum emulation_result FUNC7(union mips_instruction inst,
					       u32 *opc, u32 cause,
					       struct kvm_run *run,
					       struct kvm_vcpu *vcpu)
{
	enum emulation_result er = EMULATE_DONE;
	u32 cache, op_inst, op, base;
	s16 offset;
	struct kvm_vcpu_arch *arch = &vcpu->arch;
	unsigned long va, curr_pc;

	/*
	 * Update PC and hold onto current PC in case there is
	 * an error and we want to rollback the PC
	 */
	curr_pc = vcpu->arch.pc;
	er = FUNC6(vcpu, cause);
	if (er == EMULATE_FAIL)
		return er;

	base = inst.i_format.rs;
	op_inst = inst.i_format.rt;
	if (cpu_has_mips_r6)
		offset = inst.spec3_format.simmediate;
	else
		offset = inst.i_format.simmediate;
	cache = op_inst & CacheOp_Cache;
	op = op_inst & CacheOp_Op;

	va = arch->gprs[base] + offset;

	FUNC3("CACHE (cache: %#x, op: %#x, base[%d]: %#lx, offset: %#x\n",
		  cache, op, base, arch->gprs[base], offset);

	/* Secondary or tirtiary cache ops ignored */
	if (cache != Cache_I && cache != Cache_D)
		return EMULATE_DONE;

	switch (op_inst) {
	case Index_Invalidate_I:
		FUNC2(va);
		return EMULATE_DONE;
	case Index_Writeback_Inv_D:
		FUNC1(va);
		return EMULATE_DONE;
	case Hit_Invalidate_I:
	case Hit_Invalidate_D:
	case Hit_Writeback_Inv_D:
		if (FUNC0() == CPU_CAVIUM_OCTEON3) {
			/* We can just flush entire icache */
			FUNC5(0, 0);
			return EMULATE_DONE;
		}

		/* So far, other platforms support guest hit cache ops */
		break;
	default:
		break;
	};

	FUNC4("@ %#lx/%#lx CACHE (cache: %#x, op: %#x, base[%d]: %#lx, offset: %#x\n",
		curr_pc, vcpu->arch.gprs[31], cache, op, base, arch->gprs[base],
		offset);
	/* Rollback PC */
	vcpu->arch.pc = curr_pc;

	return EMULATE_FAIL;
}