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
struct trapped_io {int num_resources; struct resource* resource; scalar_t__ virt_base; } ;
struct resource {unsigned long start; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct resource*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct trapped_io *tiop,
				    unsigned long address)
{
	struct resource *res;
	unsigned long vaddr = (unsigned long)tiop->virt_base;
	unsigned long len;
	int k;

	for (k = 0; k < tiop->num_resources; k++) {
		res = tiop->resource + k;
		len = FUNC1(FUNC0(res), PAGE_SIZE);
		if (address < (vaddr + len))
			return res->start + (address - vaddr);
		vaddr += len;
	}
	return 0;
}