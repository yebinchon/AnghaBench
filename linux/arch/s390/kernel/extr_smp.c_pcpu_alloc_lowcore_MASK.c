#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct pcpu {struct lowcore* lowcore; } ;
struct lowcore {unsigned long nodat_stack; unsigned long async_stack; int cpu_nr; int br_r1_trampoline; scalar_t__ spinlock_index; int /*<<< orphan*/  spinlock_lockval; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  LC_ORDER ; 
 int /*<<< orphan*/  S390_lowcore ; 
 int /*<<< orphan*/  SIGP_SET_PREFIX ; 
 unsigned long STACK_INIT_OFFSET ; 
 int /*<<< orphan*/  THREAD_SIZE_ORDER ; 
 unsigned long FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 struct lowcore** lowcore_ptr ; 
 int /*<<< orphan*/  FUNC3 (struct lowcore*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct lowcore*) ; 
 int /*<<< orphan*/  FUNC6 (struct lowcore*) ; 
 struct pcpu* pcpu_devices ; 
 int /*<<< orphan*/  FUNC7 (struct pcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 scalar_t__ FUNC10 (struct lowcore*) ; 

__attribute__((used)) static int FUNC11(struct pcpu *pcpu, int cpu)
{
	unsigned long async_stack, nodat_stack;
	struct lowcore *lc;

	if (pcpu != &pcpu_devices[0]) {
		pcpu->lowcore =	(struct lowcore *)
			FUNC0(GFP_KERNEL | GFP_DMA, LC_ORDER);
		nodat_stack = FUNC0(GFP_KERNEL, THREAD_SIZE_ORDER);
		if (!pcpu->lowcore || !nodat_stack)
			goto out;
	} else {
		nodat_stack = pcpu->lowcore->nodat_stack - STACK_INIT_OFFSET;
	}
	async_stack = FUNC8();
	if (!async_stack)
		goto out;
	lc = pcpu->lowcore;
	FUNC3(lc, &S390_lowcore, 512);
	FUNC4((char *) lc + 512, 0, sizeof(*lc) - 512);
	lc->async_stack = async_stack + STACK_INIT_OFFSET;
	lc->nodat_stack = nodat_stack + STACK_INIT_OFFSET;
	lc->cpu_nr = cpu;
	lc->spinlock_lockval = FUNC1(cpu);
	lc->spinlock_index = 0;
	lc->br_r1_trampoline = 0x07f1;	/* br %r1 */
	if (FUNC5(lc))
		goto out_async;
	if (FUNC10(lc))
		goto out_mcesa;
	lowcore_ptr[cpu] = lc;
	FUNC7(pcpu, SIGP_SET_PREFIX, (u32)(unsigned long) lc);
	return 0;

out_mcesa:
	FUNC6(lc);
out_async:
	FUNC9(async_stack);
out:
	if (pcpu != &pcpu_devices[0]) {
		FUNC2(nodat_stack, THREAD_SIZE_ORDER);
		FUNC2((unsigned long) pcpu->lowcore, LC_ORDER);
	}
	return -ENOMEM;
}