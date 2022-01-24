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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
struct tlb_args {unsigned long ta_start; struct vm_area_struct* ta_vma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipi_flush_tlb_page ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tlb_args*,int) ; 
 scalar_t__ FUNC4 () ; 

void FUNC5(struct vm_area_struct *vma, unsigned long uaddr)
{
	if (FUNC4()) {
		struct tlb_args ta;
		ta.ta_vma = vma;
		ta.ta_start = uaddr;
		FUNC3(FUNC2(vma->vm_mm), ipi_flush_tlb_page,
					&ta, 1);
	} else
		FUNC0(vma, uaddr);
	FUNC1(vma->vm_mm);
}