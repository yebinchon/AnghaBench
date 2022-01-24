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
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 scalar_t__ PAGE_SHIFT ; 
 int __GFP_NOWARN ; 
 struct page* FUNC0 (int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/ * FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 

__attribute__((used)) static __be64 *FUNC4(int nid, unsigned int shift)
{
	struct page *tce_mem = NULL;
	__be64 *addr;

	tce_mem = FUNC0(nid, GFP_ATOMIC | __GFP_NOWARN,
			shift - PAGE_SHIFT);
	if (!tce_mem) {
		FUNC3("Failed to allocate a TCE memory, level shift=%d\n",
				shift);
		return NULL;
	}
	addr = FUNC2(tce_mem);
	FUNC1(addr, 0, 1UL << shift);

	return addr;
}