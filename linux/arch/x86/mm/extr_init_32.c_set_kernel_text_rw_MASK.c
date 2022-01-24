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
 int /*<<< orphan*/  _etext ; 
 int /*<<< orphan*/  _text ; 
 int /*<<< orphan*/  kernel_set_to_readonly ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

void FUNC4(void)
{
	unsigned long start = FUNC0(_text);
	unsigned long size = FUNC0(_etext) - start;

	if (!kernel_set_to_readonly)
		return;

	FUNC1("Set kernel text: %lx - %lx for read write\n",
		 start, start+size);

	FUNC2(FUNC3(start), size >> PAGE_SHIFT);
}