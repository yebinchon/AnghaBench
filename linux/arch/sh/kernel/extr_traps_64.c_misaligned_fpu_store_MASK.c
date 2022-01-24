#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {scalar_t__ pc; int /*<<< orphan*/  sr; } ;
typedef  int insn_size_t ;
typedef  scalar_t__ __u64 ;
typedef  int __u32 ;
struct TYPE_9__ {TYPE_2__* xstate; } ;
struct TYPE_10__ {TYPE_3__ thread; } ;
struct TYPE_7__ {int* fp_regs; } ;
struct TYPE_8__ {TYPE_1__ hardfpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  SR_FD ; 
 scalar_t__ FUNC0 (void*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC2 (char*,struct pt_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct pt_regs*,int,int,int,scalar_t__*) ; 
 TYPE_4__* last_task_used_math ; 
 int /*<<< orphan*/  FUNC6 (char*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 scalar_t__ FUNC8 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC9(struct pt_regs *regs,
			   insn_size_t opcode,
			   int displacement_not_indexed,
			   int width_shift,
			   int do_paired_load)
{
	/* Return -1 for a fault, 0 for OK */
	int error;
	int srcreg;
	__u64 address;

	error = FUNC5(regs, opcode,
			displacement_not_indexed, width_shift, &address);
	if (error < 0)
		return error;

	srcreg = (opcode >> 4) & 0x3f;
	if (FUNC8(regs)) {
		__u64 buffer;
		/* Initialise these to NaNs. */
		__u32 buflo=0xffffffffUL, bufhi=0xffffffffUL;

		if (!FUNC1((unsigned long) address, 1UL<<width_shift)) {
			return -1;
		}

		/* 'current' may be the current owner of the FPU state, so
		   context switch the registers into memory so they can be
		   indexed by register number. */
		if (last_task_used_math == current) {
			FUNC4();
			FUNC7(current);
			FUNC3();
			last_task_used_math = NULL;
			regs->sr |= SR_FD;
		}

		switch (width_shift) {
		case 2:
			buflo = current->thread.xstate->hardfpu.fp_regs[srcreg];
			break;
		case 3:
			if (do_paired_load) {
				buflo = current->thread.xstate->hardfpu.fp_regs[srcreg];
				bufhi = current->thread.xstate->hardfpu.fp_regs[srcreg+1];
			} else {
#if defined(CONFIG_CPU_LITTLE_ENDIAN)
				bufhi = current->thread.xstate->hardfpu.fp_regs[srcreg];
				buflo = current->thread.xstate->hardfpu.fp_regs[srcreg+1];
#else
				buflo = current->thread.xstate->hardfpu.fp_regs[srcreg];
				bufhi = current->thread.xstate->hardfpu.fp_regs[srcreg+1];
#endif
			}
			break;
		default:
			FUNC6("Unexpected width_shift %d in misaligned_fpu_store, PC=%08lx\n",
				width_shift, (unsigned long) regs->pc);
			break;
		}

		*(__u32*) &buffer = buflo;
		*(1 + (__u32*) &buffer) = bufhi;
		if (FUNC0((void *)(int)address, &buffer, (1 << width_shift)) > 0) {
			return -1; /* fault */
		}
		return 0;
	} else {
		FUNC2 ("Misaligned FPU load inside kernel", regs, 0);
		return -1;
	}
}