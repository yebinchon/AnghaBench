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

/* Variables and functions */
 scalar_t__ BOOT_HEAP_SIZE ; 
 int /*<<< orphan*/  CONFIG_MIPS_RAW_APPENDED_DTB ; 
 scalar_t__ FDT_MAGIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long VMLINUX_LOAD_ADDRESS_ULL ; 
 int /*<<< orphan*/  __appended_dtb ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __image_begin ; 
 int /*<<< orphan*/  __image_end ; 
 int /*<<< orphan*/  error ; 
 scalar_t__ FUNC2 (void*) ; 
 unsigned int FUNC3 (void*) ; 
 scalar_t__ free_mem_end_ptr ; 
 unsigned long free_mem_ptr ; 
 unsigned int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void FUNC8(unsigned long boot_heap_start)
{
	unsigned long zimage_start, zimage_size;

	zimage_start = (unsigned long)(&__image_begin);
	zimage_size = (unsigned long)(&__image_end) -
	    (unsigned long)(&__image_begin);

	FUNC7("zimage at:     ");
	FUNC6(zimage_start);
	FUNC7(" ");
	FUNC6(zimage_size + zimage_start);
	FUNC7("\n");

	/* This area are prepared for mallocing when decompressing */
	free_mem_ptr = boot_heap_start;
	free_mem_end_ptr = boot_heap_start + BOOT_HEAP_SIZE;

	/* Display standard Linux/MIPS boot prompt */
	FUNC7("Uncompressing Linux at load address ");
	FUNC6(VMLINUX_LOAD_ADDRESS_ULL);
	FUNC7("\n");

	/* Decompress the kernel with according algorithm */
	FUNC1((char *)zimage_start, zimage_size, 0, 0,
		   (void *)VMLINUX_LOAD_ADDRESS_ULL, 0, 0, error);

	if (FUNC0(CONFIG_MIPS_RAW_APPENDED_DTB) &&
	    FUNC2((void *)&__appended_dtb) == FDT_MAGIC) {
		unsigned int image_size, dtb_size;

		dtb_size = FUNC3((void *)&__appended_dtb);

		/* last four bytes is always image size in little endian */
		image_size = FUNC4((void *)&__image_end - 4);

		/* copy dtb to where the booted kernel will expect it */
		FUNC5((void *)VMLINUX_LOAD_ADDRESS_ULL + image_size,
		       __appended_dtb, dtb_size);
	}

	/* FIXME: should we flush cache here? */
	FUNC7("Now, booting the kernel...\n");
}