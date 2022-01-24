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
struct TYPE_2__ {unsigned long address; scalar_t__ size; } ;
struct saved_context {int misc_enable_saved; int /*<<< orphan*/  misc_enable; int /*<<< orphan*/  cr4; int /*<<< orphan*/  cr3; int /*<<< orphan*/  cr2; int /*<<< orphan*/  cr0; int /*<<< orphan*/  efer; int /*<<< orphan*/  usermode_gs_base; int /*<<< orphan*/  kernelmode_gs_base; int /*<<< orphan*/  fs_base; int /*<<< orphan*/  es; int /*<<< orphan*/  ds; int /*<<< orphan*/  fs; int /*<<< orphan*/  gs; int /*<<< orphan*/  tr; TYPE_1__ gdt_desc; int /*<<< orphan*/  idt; } ;

/* Variables and functions */
 scalar_t__ GDT_SIZE ; 
 int /*<<< orphan*/  MSR_EFER ; 
 int /*<<< orphan*/  MSR_FS_BASE ; 
 int /*<<< orphan*/  MSR_GS_BASE ; 
 int /*<<< orphan*/  MSR_IA32_MISC_ENABLE ; 
 int /*<<< orphan*/  MSR_KERNEL_GS_BASE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ds ; 
 int /*<<< orphan*/  es ; 
 int /*<<< orphan*/  fs ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gs ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct saved_context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct saved_context *ctxt)
{
#ifdef CONFIG_X86_32
	mtrr_save_fixed_ranges(NULL);
#endif
	FUNC3();

	/*
	 * descriptor tables
	 */
	FUNC12(&ctxt->idt);

	/*
	 * We save it here, but restore it only in the hibernate case.
	 * For ACPI S3 resume, this is loaded via 'early_gdt_desc' in 64-bit
	 * mode in "secondary_startup_64". In 32-bit mode it is done via
	 * 'pmode_gdt' in wakeup_start.
	 */
	ctxt->gdt_desc.size = GDT_SIZE - 1;
	ctxt->gdt_desc.address = (unsigned long)FUNC2(FUNC11());

	FUNC13(ctxt->tr);

	/* XMM0..XMM15 should be handled by kernel_fpu_begin(). */
	/*
	 * segment registers
	 */
#ifdef CONFIG_X86_32_LAZY_GS
	savesegment(gs, ctxt->gs);
#endif
#ifdef CONFIG_X86_64
	savesegment(gs, ctxt->gs);
	savesegment(fs, ctxt->fs);
	savesegment(ds, ctxt->ds);
	savesegment(es, ctxt->es);

	rdmsrl(MSR_FS_BASE, ctxt->fs_base);
	rdmsrl(MSR_GS_BASE, ctxt->kernelmode_gs_base);
	rdmsrl(MSR_KERNEL_GS_BASE, ctxt->usermode_gs_base);
	mtrr_save_fixed_ranges(NULL);

	rdmsrl(MSR_EFER, ctxt->efer);
#endif

	/*
	 * control registers
	 */
	ctxt->cr0 = FUNC8();
	ctxt->cr2 = FUNC9();
	ctxt->cr3 = FUNC0();
	ctxt->cr4 = FUNC1();
	ctxt->misc_enable_saved = !FUNC7(MSR_IA32_MISC_ENABLE,
					       &ctxt->misc_enable);
	FUNC4(ctxt);
}