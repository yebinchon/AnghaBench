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
 void* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*) ; 

void FUNC3(struct page *to, struct page *from,
	unsigned long vaddr, struct vm_area_struct *vma)
{
	void *kto, *kfrom;

	kto = FUNC0(to);
	kfrom = FUNC0(from);
	FUNC2(kto, kfrom);
	FUNC1(kfrom);
	FUNC1(kto);
}