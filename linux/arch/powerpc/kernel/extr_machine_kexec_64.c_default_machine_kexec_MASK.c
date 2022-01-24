#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct paca_struct {int dummy; } ;
struct kimage {scalar_t__ type; int /*<<< orphan*/  control_code_page; int /*<<< orphan*/  start; scalar_t__ preserve_context; } ;
struct TYPE_7__ {int /*<<< orphan*/  preempt_count; scalar_t__ flags; } ;
struct TYPE_6__ {int data_offset; size_t paca_index; int /*<<< orphan*/ * lppaca_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_FEATURE_LPAR ; 
 int /*<<< orphan*/  FW_FEATURE_PS3_LV1 ; 
 int /*<<< orphan*/  HARDIRQ_OFFSET ; 
 scalar_t__ KEXEC_TYPE_CRASH ; 
 TYPE_5__* FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ kexec_paca ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kimage*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  kexec_stack ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmu_cleanup_all ; 
 TYPE_1__** paca_ptrs ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

void FUNC13(struct kimage *image)
{
	bool copy_with_mmu_off;

	/* prepare control code if any */

	/*
        * If the kexec boot is the normal one, need to shutdown other cpus
        * into our wait loop and quiesce interrupts.
        * Otherwise, in the case of crashed mode (crashing_cpu >= 0),
        * stopping other CPUs and collecting their pt_regs is done before
        * using debugger IPI.
        */

	if (!FUNC4())
		FUNC5();

	FUNC9("kexec: Starting switchover sequence.\n");

	/* switch to a staticly allocated stack.  Based on irq stack code.
	 * We setup preempt_count to avoid using VMX in memcpy.
	 * XXX: the task struct will likely be invalid once we do the copy!
	 */
	FUNC0()->flags = 0;
	FUNC0()->preempt_count = HARDIRQ_OFFSET;

	/* We need a static PACA, too; copy this CPU's PACA over and switch to
	 * it. Also poison per_cpu_offset and NULL lppaca to catch anyone using
	 * non-static data.
	 */
	FUNC7(&kexec_paca, FUNC2(), sizeof(struct paca_struct));
	kexec_paca.data_offset = 0xedeaddeadeeeeeeeUL;
#ifdef CONFIG_PPC_PSERIES
	kexec_paca.lppaca_ptr = NULL;
#endif

	if (FUNC3() && !(image->preserve_context ||
				   image->type == KEXEC_TYPE_CRASH)) {
		FUNC12();
		FUNC9("kexec: Unshared all shared pages.\n");
	}

	paca_ptrs[kexec_paca.paca_index] = &kexec_paca;

	FUNC11(&kexec_paca);

	/*
	 * The lppaca should be unregistered at this point so the HV won't
	 * touch it. In the case of a crash, none of the lppacas are
	 * unregistered so there is not much we can do about it here.
	 */

	/*
	 * On Book3S, the copy must happen with the MMU off if we are either
	 * using Radix page tables or we are not in an LPAR since we can
	 * overwrite the page tables while copying.
	 *
	 * In an LPAR, we keep the MMU on otherwise we can't access beyond
	 * the RMA. On BookE there is no real MMU off mode, so we have to
	 * keep it enabled as well (but then we have bolted TLB entries).
	 */
#ifdef CONFIG_PPC_BOOK3E
	copy_with_mmu_off = false;
#else
	copy_with_mmu_off = FUNC10() ||
		!(FUNC1(FW_FEATURE_LPAR) ||
		  FUNC1(FW_FEATURE_PS3_LV1));
#endif

	/* Some things are best done in assembly.  Finding globals with
	 * a toc is easier in C, so pass in what we can.
	 */
	FUNC6(&kexec_stack, image->start, image,
		       FUNC8(image->control_code_page),
		       mmu_cleanup_all, copy_with_mmu_off);
	/* NOTREACHED */
}