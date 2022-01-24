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
struct kimage {unsigned long start; scalar_t__ type; unsigned long head; int /*<<< orphan*/  control_code_page; } ;

/* Variables and functions */
 unsigned long IND_DESTINATION ; 
 unsigned long IND_DONE ; 
 unsigned long IND_INDIRECTION ; 
 unsigned long IND_SOURCE ; 
 scalar_t__ KEXEC_TYPE_DEFAULT ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 unsigned long kexec_indirection_page ; 
 int /*<<< orphan*/  kexec_ready_to_reboot ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ kexec_smp_wait ; 
 unsigned long kexec_start_address ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long* FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 long reboot_code_buffer ; 
 scalar_t__ relocate_new_kernel ; 
 int /*<<< orphan*/  relocate_new_kernel_size ; 
 void* relocated_kexec_smp_wait ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

void
FUNC11(struct kimage *image)
{
	unsigned long entry;
	unsigned long *ptr;

	reboot_code_buffer =
	  (unsigned long)FUNC5(image->control_code_page);

	kexec_start_address =
		(unsigned long) FUNC6(image->start);

	if (image->type == KEXEC_TYPE_DEFAULT) {
		kexec_indirection_page =
			(unsigned long) FUNC6(image->head & PAGE_MASK);
	} else {
		kexec_indirection_page = (unsigned long)&image->head;
	}

	FUNC4((void*)reboot_code_buffer, relocate_new_kernel,
	       relocate_new_kernel_size);

	/*
	 * The generic kexec code builds a page list with physical
	 * addresses. they are directly accessible through KSEG0 (or
	 * CKSEG0 or XPHYS if on 64bit system), hence the
	 * phys_to_virt() call.
	 */
	for (ptr = &image->head; (entry = *ptr) && !(entry &IND_DONE);
	     ptr = (entry & IND_INDIRECTION) ?
	       FUNC6(entry & PAGE_MASK) : ptr + 1) {
		if (*ptr & IND_SOURCE || *ptr & IND_INDIRECTION ||
		    *ptr & IND_DESTINATION)
			*ptr = (unsigned long) FUNC6(*ptr);
	}

	/* Mark offline BEFORE disabling local irq. */
	FUNC8(FUNC9(), false);

	/*
	 * we do not want to be bothered.
	 */
	FUNC3();

	FUNC7("Will call new kernel at %08lx\n", image->start);
	FUNC7("Bye ...\n");
	/* Make reboot code buffer available to the boot CPU. */
	FUNC0();
#ifdef CONFIG_SMP
	/* All secondary cpus now may jump to kexec_wait cycle */
	relocated_kexec_smp_wait = reboot_code_buffer +
		(void *)(kexec_smp_wait - relocate_new_kernel);
	smp_wmb();
	atomic_set(&kexec_ready_to_reboot, 1);
#endif
	FUNC2();
}