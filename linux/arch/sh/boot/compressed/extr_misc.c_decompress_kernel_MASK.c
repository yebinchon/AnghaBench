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
 int /*<<< orphan*/  CACHE_DISABLE ; 
 int /*<<< orphan*/  CACHE_ENABLE ; 
 int CONFIG_MEMORY_START ; 
 scalar_t__ HEAP_SIZE ; 
 unsigned long P2SEG ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  _end ; 
 int /*<<< orphan*/  _text ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  error ; 
 scalar_t__ free_mem_end_ptr ; 
 unsigned long free_mem_ptr ; 
 int /*<<< orphan*/  input_data ; 
 int /*<<< orphan*/  input_len ; 
 unsigned char* output ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(void)
{
	unsigned long output_addr;

#ifdef CONFIG_SUPERH64
	output_addr = (CONFIG_MEMORY_START + 0x2000);
#else
	output_addr = FUNC1((unsigned long)&_text+PAGE_SIZE);
#if defined(CONFIG_29BIT)
	output_addr |= P2SEG;
#endif
#endif

	output = (unsigned char *)output_addr;
	free_mem_ptr = (unsigned long)&_end;
	free_mem_end_ptr = free_mem_ptr + HEAP_SIZE;

	FUNC3("Uncompressing Linux... ");
	FUNC2(CACHE_ENABLE);
	FUNC0(input_data, input_len, NULL, NULL, output, 0, NULL, error);
	FUNC2(CACHE_DISABLE);
	FUNC3("Ok, booting the kernel.\n");
}