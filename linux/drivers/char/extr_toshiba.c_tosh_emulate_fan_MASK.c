#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int eax; int ecx; } ;
typedef  TYPE_1__ SMMRegisters ;

/* Variables and functions */
 unsigned char FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int tosh_id ; 

__attribute__((used)) static int FUNC5(SMMRegisters *regs)
{
	unsigned long eax,ecx,flags;
	unsigned char al;

	eax = regs->eax & 0xff00;
	ecx = regs->ecx & 0xffff;

	/* Portage 610CT */

	if (tosh_id==0xfccb) {
		if (eax==0xfe00) {
			/* fan status */
			FUNC2(flags);
			FUNC3(0xbe, 0xe4);
			al = FUNC0(0xe5);
			FUNC1(flags);
			regs->eax = 0x00;
			regs->ecx = (unsigned int) (al & 0x01);
		}
		if ((eax==0xff00) && (ecx==0x0000)) {
			/* fan off */
			FUNC2(flags);
			FUNC3(0xbe, 0xe4);
			al = FUNC0(0xe5);
			FUNC3(0xbe, 0xe4);
			FUNC3 (al | 0x01, 0xe5);
			FUNC1(flags);
			regs->eax = 0x00;
			regs->ecx = 0x00;
		}
		if ((eax==0xff00) && (ecx==0x0001)) {
			/* fan on */
			FUNC2(flags);
			FUNC3(0xbe, 0xe4);
			al = FUNC0(0xe5);
			FUNC3(0xbe, 0xe4);
			FUNC3(al & 0xfe, 0xe5);
			FUNC1(flags);
			regs->eax = 0x00;
			regs->ecx = 0x01;
		}
	}

	/* Tecra 700CS/CDT */

	if (tosh_id==0xfccc) {
		if (eax==0xfe00) {
			/* fan status */
			FUNC2(flags);
			FUNC3(0xe0, 0xe4);
			al = FUNC0(0xe5);
			FUNC1(flags);
			regs->eax = 0x00;
			regs->ecx = al & 0x01;
		}
		if ((eax==0xff00) && (ecx==0x0000)) {
			/* fan off */
			FUNC2(flags);
			FUNC3(0xe0, 0xe4);
			al = FUNC0(0xe5);
			FUNC4(0xe0 | ((al & 0xfe) << 8), 0xe4);
			FUNC1(flags);
			regs->eax = 0x00;
			regs->ecx = 0x00;
		}
		if ((eax==0xff00) && (ecx==0x0001)) {
			/* fan on */
			FUNC2(flags);
			FUNC3(0xe0, 0xe4);
			al = FUNC0(0xe5);
			FUNC4(0xe0 | ((al | 0x01) << 8), 0xe4);
			FUNC1(flags);
			regs->eax = 0x00;
			regs->ecx = 0x01;
		}
	}

	return 0;
}