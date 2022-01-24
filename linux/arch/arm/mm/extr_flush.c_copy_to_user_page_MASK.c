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
 int /*<<< orphan*/  FUNC0 (struct vm_area_struct*,struct page*,unsigned long,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (void*,void const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct vm_area_struct *vma, struct page *page,
		       unsigned long uaddr, void *dst, const void *src,
		       unsigned long len)
{
#ifdef CONFIG_SMP
	preempt_disable();
#endif
	FUNC1(dst, src, len);
	FUNC0(vma, page, uaddr, dst, len);
#ifdef CONFIG_SMP
	preempt_enable();
#endif
}