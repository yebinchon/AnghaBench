#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 unsigned long CACHE_OC_ADDRESS_ARRAY ; 
 int CPU_HAS_P2_FLUSH_BUG ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long,unsigned long) ; 
 TYPE_1__ boot_cpu_data ; 
 unsigned long cached_to_uncached ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static inline void FUNC3(unsigned long start, unsigned long phys)
{
	unsigned long flags, exec_offset = 0;

	/*
	 * All types of SH-4 require PC to be uncached to operate on the I-cache.
	 * Some types of SH-4 require PC to be uncached to operate on the D-cache.
	 */
	if ((boot_cpu_data.flags & CPU_HAS_P2_FLUSH_BUG) ||
	    (start < CACHE_OC_ADDRESS_ARRAY))
		exec_offset = cached_to_uncached;

	FUNC2(flags);
	FUNC0(start, phys, exec_offset);
	FUNC1(flags);
}