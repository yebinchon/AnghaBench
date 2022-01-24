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
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  error ; 
 unsigned long free_mem_end_ptr ; 
 unsigned long free_mem_ptr ; 
 unsigned long FUNC3 (unsigned char*) ; 
 scalar_t__ input_data ; 
 scalar_t__ input_data_end ; 
 unsigned char* output_data ; 
 unsigned long output_ptr ; 

unsigned long FUNC4(unsigned long output_start,
		unsigned long free_mem_ptr_p,
		unsigned long free_mem_ptr_end_p)
{
	unsigned char *tmp;

	output_data		= (unsigned char *)output_start;
	free_mem_ptr		= free_mem_ptr_p;
	free_mem_end_ptr	= free_mem_ptr_end_p;

	FUNC2();

	tmp = (unsigned char *) (((unsigned long)input_data_end) - 4);
	output_ptr = FUNC3(tmp);

	FUNC1("Uncompressing Linux...");
	FUNC0(input_data, input_data_end - input_data, NULL, NULL,
			output_data, 0, NULL, error);
	FUNC1(" done, booting the kernel.\n");
	return output_ptr;
}