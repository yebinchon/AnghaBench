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
struct TYPE_4__ {unsigned long vmalloc_sllp; int stab_rr; unsigned int slb_kern_bitmap; unsigned int slb_used_bitmap; int kstack; } ;
struct TYPE_3__ {unsigned long sllp; } ;

/* Variables and functions */
 int /*<<< orphan*/  KSTACK_INDEX ; 
 int /*<<< orphan*/  LINEAR_INDEX ; 
 int PAGE_OFFSET ; 
 int SLB_NUM_BOLTED ; 
 unsigned long SLB_VSID_KERNEL ; 
 scalar_t__ boot_cpuid ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 () ; 
 size_t mmu_io_psize ; 
 int /*<<< orphan*/  mmu_kernel_ssize ; 
 size_t mmu_linear_psize ; 
 TYPE_1__* mmu_psize_defs ; 
 size_t mmu_vmalloc_psize ; 
 size_t mmu_vmemmap_psize ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	unsigned long linear_llp, vmalloc_llp, io_llp;
	unsigned long lflags;
	static int slb_encoding_inited;
#ifdef CONFIG_SPARSEMEM_VMEMMAP
	unsigned long vmemmap_llp;
#endif

	/* Prepare our SLB miss handler based on our page size */
	linear_llp = mmu_psize_defs[mmu_linear_psize].sllp;
	io_llp = mmu_psize_defs[mmu_io_psize].sllp;
	vmalloc_llp = mmu_psize_defs[mmu_vmalloc_psize].sllp;
	FUNC1()->vmalloc_sllp = SLB_VSID_KERNEL | vmalloc_llp;
#ifdef CONFIG_SPARSEMEM_VMEMMAP
	vmemmap_llp = mmu_psize_defs[mmu_vmemmap_psize].sllp;
#endif
	if (!slb_encoding_inited) {
		slb_encoding_inited = 1;
		FUNC2("SLB: linear  LLP = %04lx\n", linear_llp);
		FUNC2("SLB: io      LLP = %04lx\n", io_llp);
#ifdef CONFIG_SPARSEMEM_VMEMMAP
		pr_devel("SLB: vmemmap LLP = %04lx\n", vmemmap_llp);
#endif
	}

	FUNC1()->stab_rr = SLB_NUM_BOLTED - 1;
	FUNC1()->slb_kern_bitmap = (1U << SLB_NUM_BOLTED) - 1;
	FUNC1()->slb_used_bitmap = FUNC1()->slb_kern_bitmap;

	lflags = SLB_VSID_KERNEL | linear_llp;

	/* Invalidate the entire SLB (even entry 0) & all the ERATS */
	asm volatile("isync":::"memory");
	asm volatile("slbmte  %0,%0"::"r" (0) : "memory");
	asm volatile("isync; slbia; isync":::"memory");
	FUNC0(PAGE_OFFSET, mmu_kernel_ssize, lflags, LINEAR_INDEX);

	/*
	 * For the boot cpu, we're running on the stack in init_thread_union,
	 * which is in the first segment of the linear mapping, and also
	 * get_paca()->kstack hasn't been initialized yet.
	 * For secondary cpus, we need to bolt the kernel stack entry now.
	 */
	FUNC5(KSTACK_INDEX);
	if (FUNC3() != boot_cpuid &&
	    (FUNC1()->kstack & FUNC4(mmu_kernel_ssize)) > PAGE_OFFSET)
		FUNC0(FUNC1()->kstack,
				     mmu_kernel_ssize, lflags, KSTACK_INDEX);

	asm volatile("isync":::"memory");
}