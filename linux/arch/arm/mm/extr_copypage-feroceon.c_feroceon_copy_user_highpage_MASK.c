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
 int /*<<< orphan*/  FUNC0 (void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

void FUNC5(struct page *to, struct page *from,
	unsigned long vaddr, struct vm_area_struct *vma)
{
	void *kto, *kfrom;

	kto = FUNC2(to);
	kfrom = FUNC2(from);
	FUNC1(vma, vaddr, FUNC4(from));
	FUNC0(kto, kfrom);
	FUNC3(kfrom);
	FUNC3(kto);
}