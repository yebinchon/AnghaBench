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
struct flush_kernel_vmap_range_args {unsigned long vaddr; int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  R4600_HIT_CACHEOP_WAR_IMPL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 

__attribute__((used)) static inline void FUNC1(void *args)
{
	struct flush_kernel_vmap_range_args *vmra = args;
	unsigned long vaddr = vmra->vaddr;
	int size = vmra->size;

	/*
	 * Aliases only affect the primary caches so don't bother with
	 * S-caches or T-caches.
	 */
	R4600_HIT_CACHEOP_WAR_IMPL;
	FUNC0(vaddr, vaddr + size);
}