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
struct thread_info {int tp_value; } ;
struct pt_regs {int* regs; } ;
struct TYPE_5__ {int /*<<< orphan*/  linesz; } ;
struct TYPE_4__ {int /*<<< orphan*/  linesz; } ;
struct TYPE_6__ {TYPE_2__ icache; TYPE_1__ dcache; } ;

/* Variables and functions */
#define  CPU_20KC 134 
#define  CPU_25KF 133 
#define  MIPS_HWR_CC 132 
#define  MIPS_HWR_CCRES 131 
#define  MIPS_HWR_CPUNUM 130 
#define  MIPS_HWR_SYNCISTEP 129 
#define  MIPS_HWR_ULR 128 
 int /*<<< orphan*/  PERF_COUNT_SW_EMULATION_FAULTS ; 
 int /*<<< orphan*/  current ; 
 TYPE_3__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct pt_regs*,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 struct thread_info* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pt_regs *regs, int rd, int rt)
{
	struct thread_info *ti = FUNC5(current);

	FUNC2(PERF_COUNT_SW_EMULATION_FAULTS,
			1, regs, 0);
	switch (rd) {
	case MIPS_HWR_CPUNUM:		/* CPU number */
		regs->regs[rt] = FUNC4();
		return 0;
	case MIPS_HWR_SYNCISTEP:	/* SYNCI length */
		regs->regs[rt] = FUNC1(current_cpu_data.dcache.linesz,
				     current_cpu_data.icache.linesz);
		return 0;
	case MIPS_HWR_CC:		/* Read count register */
		regs->regs[rt] = FUNC3();
		return 0;
	case MIPS_HWR_CCRES:		/* Count register resolution */
		switch (FUNC0()) {
		case CPU_20KC:
		case CPU_25KF:
			regs->regs[rt] = 1;
			break;
		default:
			regs->regs[rt] = 2;
		}
		return 0;
	case MIPS_HWR_ULR:		/* Read UserLocal register */
		regs->regs[rt] = ti->tp_value;
		return 0;
	default:
		return -1;
	}
}