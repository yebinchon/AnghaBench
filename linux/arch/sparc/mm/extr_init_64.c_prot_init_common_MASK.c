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
 void* PAGE_COPY ; 
 void* PAGE_SHARED ; 
 void* FUNC0 (unsigned long) ; 
 void** protection_map ; 

__attribute__((used)) static void FUNC1(unsigned long page_none,
			     unsigned long page_shared,
			     unsigned long page_copy,
			     unsigned long page_readonly,
			     unsigned long page_exec_bit)
{
	PAGE_COPY = FUNC0(page_copy);
	PAGE_SHARED = FUNC0(page_shared);

	protection_map[0x0] = FUNC0(page_none);
	protection_map[0x1] = FUNC0(page_readonly & ~page_exec_bit);
	protection_map[0x2] = FUNC0(page_copy & ~page_exec_bit);
	protection_map[0x3] = FUNC0(page_copy & ~page_exec_bit);
	protection_map[0x4] = FUNC0(page_readonly);
	protection_map[0x5] = FUNC0(page_readonly);
	protection_map[0x6] = FUNC0(page_copy);
	protection_map[0x7] = FUNC0(page_copy);
	protection_map[0x8] = FUNC0(page_none);
	protection_map[0x9] = FUNC0(page_readonly & ~page_exec_bit);
	protection_map[0xa] = FUNC0(page_shared & ~page_exec_bit);
	protection_map[0xb] = FUNC0(page_shared & ~page_exec_bit);
	protection_map[0xc] = FUNC0(page_readonly);
	protection_map[0xd] = FUNC0(page_readonly);
	protection_map[0xe] = FUNC0(page_shared);
	protection_map[0xf] = FUNC0(page_shared);
}