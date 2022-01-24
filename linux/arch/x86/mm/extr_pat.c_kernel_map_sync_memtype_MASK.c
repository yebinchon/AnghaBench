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
typedef  unsigned long u64 ;
typedef  enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;
struct TYPE_2__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* current ; 
 scalar_t__ high_memory ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long long) ; 

int FUNC6(u64 base, unsigned long size,
			    enum page_cache_mode pcm)
{
	unsigned long id_sz;

	if (base > FUNC0(high_memory-1))
		return 0;

	/*
	 * some areas in the middle of the kernel identity range
	 * are not mapped, like the PCI space.
	 */
	if (!FUNC4(base >> PAGE_SHIFT))
		return 0;

	id_sz = (FUNC0(high_memory-1) <= base + size) ?
				FUNC0(high_memory) - base :
				size;

	if (FUNC3((unsigned long)FUNC1(base), id_sz, pcm) < 0) {
		FUNC5("x86/PAT: %s:%d ioremap_change_attr failed %s for [mem %#010Lx-%#010Lx]\n",
			current->comm, current->pid,
			FUNC2(pcm),
			base, (unsigned long long)(base + size-1));
		return -EINVAL;
	}
	return 0;
}