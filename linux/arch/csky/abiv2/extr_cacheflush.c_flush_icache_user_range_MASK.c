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
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

void FUNC3(struct vm_area_struct *vma, struct page *page,
			     unsigned long vaddr, int len)
{
	unsigned long kaddr;

	kaddr = (unsigned long) FUNC1(page) + (vaddr & ~PAGE_MASK);

	FUNC0(kaddr, kaddr + len);

	FUNC2((void *)kaddr);
}