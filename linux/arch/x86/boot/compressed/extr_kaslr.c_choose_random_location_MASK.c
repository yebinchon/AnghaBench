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
struct TYPE_3__ {int /*<<< orphan*/  loadflags; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_X86_64 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KASLR_FLAG ; 
 int /*<<< orphan*/  LOAD_PHYSICAL_ADDR ; 
 int X86_CR4_LA57 ; 
 int __pgtable_l5_enabled ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 TYPE_2__* boot_params ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned long FUNC5 (unsigned long,unsigned long) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,unsigned long,unsigned long) ; 
 unsigned long FUNC9 (unsigned long,unsigned long) ; 
 int pgdir_shift ; 
 int ptrs_per_p4d ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void FUNC11(unsigned long input,
			    unsigned long input_size,
			    unsigned long *output,
			    unsigned long output_size,
			    unsigned long *virt_addr)
{
	unsigned long random_addr, min_addr;

	if (FUNC3("nokaslr")) {
		FUNC10("KASLR disabled: 'nokaslr' on cmdline.");
		return;
	}

#ifdef CONFIG_X86_5LEVEL
	if (__read_cr4() & X86_CR4_LA57) {
		__pgtable_l5_enabled = 1;
		pgdir_shift = 48;
		ptrs_per_p4d = 512;
	}
#endif

	boot_params->hdr.loadflags |= KASLR_FLAG;

	/* Prepare to add new identity pagetables on demand. */
	FUNC7();

	/* Record the various known unsafe memory ranges. */
	FUNC8(input, input_size, *output);

	/*
	 * Low end of the randomization range should be the
	 * smaller of 512M or the initial kernel image
	 * location:
	 */
	min_addr = FUNC9(*output, 512UL << 20);

	/* Walk available memory entries to find a random address. */
	random_addr = FUNC5(min_addr, output_size);
	if (!random_addr) {
		FUNC10("Physical KASLR disabled: no suitable memory region!");
	} else {
		/* Update the new physical address location. */
		if (*output != random_addr) {
			FUNC2(random_addr, output_size);
			*output = random_addr;
		}

		/*
		 * This loads the identity mapping page table.
		 * This should only be done if a new physical address
		 * is found for the kernel, otherwise we should keep
		 * the old page table to make it be like the "nokaslr"
		 * case.
		 */
		FUNC4();
	}


	/* Pick random virtual address starting from LOAD_PHYSICAL_ADDR. */
	if (FUNC0(CONFIG_X86_64))
		random_addr = FUNC6(LOAD_PHYSICAL_ADDR, output_size);
	*virt_addr = random_addr;
}