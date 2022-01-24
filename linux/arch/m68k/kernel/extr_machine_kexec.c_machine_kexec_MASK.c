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
struct kimage {int head; int /*<<< orphan*/  start; int /*<<< orphan*/  control_code_page; } ;
typedef  int /*<<< orphan*/  (* relocate_kernel_t ) (int,int /*<<< orphan*/ ,unsigned long) ;

/* Variables and functions */
 int PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int m68k_cputype ; 
 int m68k_mmutype ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  relocate_new_kernel ; 
 int /*<<< orphan*/  relocate_new_kernel_size ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,unsigned long) ; 

void FUNC6(struct kimage *image)
{
	void *reboot_code_buffer;
	unsigned long cpu_mmu_flags;

	reboot_code_buffer = FUNC3(image->control_code_page);

	FUNC2(reboot_code_buffer, relocate_new_kernel,
	       relocate_new_kernel_size);

	/*
	 * we do not want to be bothered.
	 */
	FUNC1();

	FUNC4("Will call new kernel at 0x%08lx. Bye...\n", image->start);
	FUNC0();
	cpu_mmu_flags = m68k_cputype | m68k_mmutype << 8;
	((relocate_kernel_t) reboot_code_buffer)(image->head & PAGE_MASK,
						 image->start,
						 cpu_mmu_flags);
}