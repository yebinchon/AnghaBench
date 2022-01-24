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
 unsigned long PAGE_SHIFT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __stop___ex_table ; 
 int /*<<< orphan*/  _text ; 
 int /*<<< orphan*/  kernel_set_to_readonly ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 

void FUNC3(void)
{
	unsigned long start = FUNC0(_text);
	unsigned long end = FUNC0(__stop___ex_table);

	if (!kernel_set_to_readonly)
		return;

	FUNC1("Set kernel text: %lx - %lx for read only\n",
		 start, end);

	/*
	 * Set the kernel identity mapping for text RO.
	 */
	FUNC2(start, (end - start) >> PAGE_SHIFT);
}