#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int type; } ;
typedef  TYPE_2__ tss_desc ;
struct desc_struct {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  active_mm; } ;
struct TYPE_7__ {int /*<<< orphan*/  x86_tss; } ;
struct TYPE_9__ {TYPE_1__ tss; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_TSS ; 
 size_t GDT_ENTRY_TSS ; 
 int /*<<< orphan*/  X86_FEATURE_SEP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_6__* current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_5__* FUNC3 (int) ; 
 struct desc_struct* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct desc_struct*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct desc_struct*,size_t,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(void)
{
	int cpu = FUNC11();
#ifdef CONFIG_X86_64
	struct desc_struct *desc = get_cpu_gdt_rw(cpu);
	tss_desc tss;
#endif

	/*
	 * We need to reload TR, which requires that we change the
	 * GDT entry to indicate "available" first.
	 *
	 * XXX: This could probably all be replaced by a call to
	 * force_reload_TR().
	 */
	FUNC10(cpu, &FUNC3(cpu)->tss.x86_tss);

#ifdef CONFIG_X86_64
	memcpy(&tss, &desc[GDT_ENTRY_TSS], sizeof(tss_desc));
	tss.type = 0x9; /* The available 64-bit TSS (see AMD vol 2, pg 91 */
	write_gdt_entry(desc, GDT_ENTRY_TSS, &tss, DESC_TSS);

	syscall_init();				/* This sets MSR_*STAR and related */
#else
	if (FUNC0(X86_FEATURE_SEP))
		FUNC1();
#endif
	FUNC6();				/* This does ltr */
	FUNC8(current->active_mm);	/* This does lldt */
	FUNC5();

	FUNC2();

	/* The processor is back on the direct GDT, load back the fixmap */
	FUNC7(cpu);
}