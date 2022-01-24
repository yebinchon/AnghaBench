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

/* Variables and functions */
 int L1_CACHE_BYTES ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int const,unsigned long) ; 
 unsigned long FUNC1 (struct page*) ; 

__attribute__((used)) static void FUNC2(struct page *page, const unsigned int reg)
{
	unsigned long paddr = FUNC1(page) << PAGE_SHIFT;
	unsigned long line = paddr & ~(L1_CACHE_BYTES - 1);

	while (line < paddr + PAGE_SIZE) {
		FUNC0(reg, line);
		line += L1_CACHE_BYTES;
	}
}