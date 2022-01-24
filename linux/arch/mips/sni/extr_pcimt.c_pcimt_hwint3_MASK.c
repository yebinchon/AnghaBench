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
typedef  char u8 ;

/* Variables and functions */
 int /*<<< orphan*/  IE_IRQ3 ; 
 char IT_INTA ; 
 char IT_INTB ; 
 char IT_INTC ; 
 char IT_INTD ; 
 scalar_t__ PCIMT_CSITPEND ; 
 int PCIMT_IRQ_INT2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	u8 pend = *(volatile char *)PCIMT_CSITPEND;
	int irq;

	pend &= (IT_INTA | IT_INTB | IT_INTC | IT_INTD);
	pend ^= (IT_INTA | IT_INTB | IT_INTC | IT_INTD);
	FUNC0(IE_IRQ3);
	irq = PCIMT_IRQ_INT2 + FUNC2(pend) - 1;
	FUNC1(irq);
	FUNC3(IE_IRQ3);
}