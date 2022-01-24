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
 int /*<<< orphan*/  R4K_HIT ; 
 int /*<<< orphan*/  R4K_INDEX ; 
 int dcache_size ; 
 int /*<<< orphan*/  local_r4k_flush_kernel_vmap_range ; 
 int /*<<< orphan*/  local_r4k_flush_kernel_vmap_range_index ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct flush_kernel_vmap_range_args*) ; 

__attribute__((used)) static void FUNC1(unsigned long vaddr, int size)
{
	struct flush_kernel_vmap_range_args args;

	args.vaddr = (unsigned long) vaddr;
	args.size = size;

	if (size >= dcache_size)
		FUNC0(R4K_INDEX,
				local_r4k_flush_kernel_vmap_range_index, NULL);
	else
		FUNC0(R4K_HIT, local_r4k_flush_kernel_vmap_range,
				&args);
}