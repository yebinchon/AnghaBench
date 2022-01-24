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
typedef  int phys_addr_t ;

/* Variables and functions */
 int BOOT_MAGIC_LIST_END ; 
 int BOOT_MAGIC_WORD ; 
 int MBUS_INTERNAL_REG_ADDRESS ; 
 int MBUS_WINDOW_12_CTRL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  armada_370_xp_cpu_resume ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(u32 *store_addr)
{
	phys_addr_t resume_pc;

	resume_pc = FUNC0(armada_370_xp_cpu_resume);

	/*
	 * The bootloader expects the first two words to be a magic
	 * value (BOOT_MAGIC_WORD), followed by the address of the
	 * resume code to jump to. Then, it expects a sequence of
	 * (address, value) pairs, which can be used to restore the
	 * value of certain registers. This sequence must end with the
	 * BOOT_MAGIC_LIST_END magic value.
	 */

	FUNC3(BOOT_MAGIC_WORD, store_addr++);
	FUNC3(resume_pc, store_addr++);

	/*
	 * Some platforms remap their internal register base address
	 * to 0xf1000000. However, out of reset, window 12 starts at
	 * 0xf0000000 and ends at 0xf7ffffff, which would overlap with
	 * the internal registers. Therefore, disable window 12.
	 */
	FUNC3(MBUS_WINDOW_12_CTRL, store_addr++);
	FUNC3(0x0, store_addr++);

	/*
	 * Set the internal register base address to the value
	 * expected by Linux, as read from the Device Tree.
	 */
	FUNC3(MBUS_INTERNAL_REG_ADDRESS, store_addr++);
	FUNC3(FUNC1(), store_addr++);

	/*
	 * Ask the mvebu-mbus driver to store the SDRAM window
	 * configuration, which has to be restored by the bootloader
	 * before re-entering the kernel on resume.
	 */
	store_addr += FUNC2(store_addr);

	FUNC3(BOOT_MAGIC_LIST_END, store_addr);
}