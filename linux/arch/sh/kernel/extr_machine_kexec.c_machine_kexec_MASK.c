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
struct kimage {unsigned long head; unsigned long start; scalar_t__ preserve_context; int /*<<< orphan*/  control_code_page; } ;
typedef  int /*<<< orphan*/  (* relocate_new_kernel_t ) (unsigned long,unsigned long,unsigned long) ;

/* Variables and functions */
 unsigned long IND_DESTINATION ; 
 unsigned long IND_DONE ; 
 unsigned long IND_INDIRECTION ; 
 unsigned long IND_SOURCE ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct kimage*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long* FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  relocate_new_kernel ; 
 int /*<<< orphan*/  relocate_new_kernel_size ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (unsigned long,unsigned long,unsigned long) ; 
 unsigned long FUNC12 (unsigned long) ; 

void FUNC13(struct kimage *image)
{
	unsigned long page_list;
	unsigned long reboot_code_buffer;
	relocate_new_kernel_t rnk;
	unsigned long entry;
	unsigned long *ptr;
	int save_ftrace_enabled;

	/*
	 * Nicked from the mips version of machine_kexec():
	 * The generic kexec code builds a page list with physical
	 * addresses. Use phys_to_virt() to convert them to virtual.
	 */
	for (ptr = &image->head; (entry = *ptr) && !(entry & IND_DONE);
	     ptr = (entry & IND_INDIRECTION) ?
	       FUNC7(entry & PAGE_MASK) : ptr + 1) {
		if (*ptr & IND_SOURCE || *ptr & IND_INDIRECTION ||
		    *ptr & IND_DESTINATION)
			*ptr = (unsigned long) FUNC7(*ptr);
	}

#ifdef CONFIG_KEXEC_JUMP
	if (image->preserve_context)
		save_processor_state();
#endif

	save_ftrace_enabled = FUNC1();

	/* Interrupts aren't acceptable while we reboot */
	FUNC4();

	page_list = image->head;

	/* we need both effective and real address here */
	reboot_code_buffer =
			(unsigned long)FUNC6(image->control_code_page);

	/* copy our kernel relocation code to the control code page */
	FUNC5((void *)reboot_code_buffer, relocate_new_kernel,
						relocate_new_kernel_size);

	FUNC3(image);
	FUNC2();

	FUNC10();

	/* now call it */
	rnk = (relocate_new_kernel_t) reboot_code_buffer;
	(*rnk)(page_list, reboot_code_buffer,
	       (unsigned long)FUNC7(image->start));

#ifdef CONFIG_KEXEC_JUMP
	asm volatile("ldc %0, vbr" : : "r" (&vbr_base) : "memory");

	if (image->preserve_context)
		restore_processor_state();

	/* Convert page list back to physical addresses, what a mess. */
	for (ptr = &image->head; (entry = *ptr) && !(entry & IND_DONE);
	     ptr = (*ptr & IND_INDIRECTION) ?
	       phys_to_virt(*ptr & PAGE_MASK) : ptr + 1) {
		if (*ptr & IND_SOURCE || *ptr & IND_INDIRECTION ||
		    *ptr & IND_DESTINATION)
			*ptr = virt_to_phys(*ptr);
	}
#endif

	FUNC0(save_ftrace_enabled);
}