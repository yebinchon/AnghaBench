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
 int __machine_arch_type ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (scalar_t__,scalar_t__,unsigned char*,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 unsigned long free_mem_end_ptr ; 
 unsigned long free_mem_ptr ; 
 scalar_t__ input_data ; 
 scalar_t__ input_data_end ; 
 unsigned char* output_data ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(unsigned long output_start, unsigned long free_mem_ptr_p,
		unsigned long free_mem_ptr_end_p,
		int arch_id)
{
	int ret;

	output_data		= (unsigned char *)output_start;
	free_mem_ptr		= free_mem_ptr_p;
	free_mem_end_ptr	= free_mem_ptr_end_p;
	__machine_arch_type	= arch_id;

	FUNC0();

	FUNC3("Uncompressing Linux...");
	ret = FUNC1(input_data, input_data_end - input_data,
			    output_data, error);
	if (ret)
		FUNC2("decompressor returned an error");
	else
		FUNC3(" done, booting the kernel.\n");
}