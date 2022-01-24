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
 scalar_t__ PAGE_OFFSET ; 
 scalar_t__ FUNC0 (unsigned long) ; 

__attribute__((used)) static inline bool FUNC1(unsigned long addr)
{
	/* TTBR1 addresses may have a tag if KASAN_SW_TAGS is in use */
	return FUNC0(addr) >= PAGE_OFFSET;
}