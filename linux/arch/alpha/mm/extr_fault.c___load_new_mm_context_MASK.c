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
struct pcb_struct {unsigned long asn; unsigned long ptbr; } ;
struct mm_struct {unsigned long* context; scalar_t__ pgd; } ;
struct TYPE_2__ {struct pcb_struct pcb; } ;

/* Variables and functions */
 unsigned long HARDWARE_ASN_MASK ; 
 unsigned long IDENT_ADDR ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long FUNC0 (struct mm_struct*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct pcb_struct*) ; 
 TYPE_1__* FUNC2 () ; 
 size_t FUNC3 () ; 

void
FUNC4(struct mm_struct *next_mm)
{
	unsigned long mmc;
	struct pcb_struct *pcb;

	mmc = FUNC0(next_mm, FUNC3());
	next_mm->context[FUNC3()] = mmc;

	pcb = &FUNC2()->pcb;
	pcb->asn = mmc & HARDWARE_ASN_MASK;
	pcb->ptbr = ((unsigned long) next_mm->pgd - IDENT_ADDR) >> PAGE_SHIFT;

	FUNC1(pcb);
}