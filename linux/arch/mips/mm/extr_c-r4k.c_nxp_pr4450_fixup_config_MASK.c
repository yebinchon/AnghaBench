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
 int /*<<< orphan*/  FUNC0 () ; 
 int _CACHE_SHIFT ; 
 int _page_cachable_default ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned long config0;

	config0 = FUNC1();

	/* clear all three cache coherency fields */
	config0 &= ~(0x7 | (7 << 25) | (7 << 28));
	config0 |= (((_page_cachable_default >> _CACHE_SHIFT) <<  0) |
		    ((_page_cachable_default >> _CACHE_SHIFT) << 25) |
		    ((_page_cachable_default >> _CACHE_SHIFT) << 28));
	FUNC2(config0);
	FUNC0();
}