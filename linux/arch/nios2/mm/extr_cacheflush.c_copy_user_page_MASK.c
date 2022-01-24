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
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*) ; 

void FUNC3(void *vto, void *vfrom, unsigned long vaddr,
		    struct page *to)
{
	FUNC0(vaddr, vaddr + PAGE_SIZE);
	FUNC1(vaddr, vaddr + PAGE_SIZE);
	FUNC2(vto, vfrom);
	FUNC0((unsigned long)vto, (unsigned long)vto + PAGE_SIZE);
	FUNC1((unsigned long)vto, (unsigned long)vto + PAGE_SIZE);
}