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

/* Variables and functions */
 int CX86_CCR2 ; 
 int CX86_CCR3 ; 
 int CX86_DIR0 ; 
 int CX86_DIR1 ; 
 unsigned char FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned char) ; 

__attribute__((used)) static void FUNC2(unsigned char *dir0, unsigned char *dir1)
{
	unsigned char ccr2, ccr3;

	/* we test for DEVID by checking whether CCR3 is writable */
	ccr3 = FUNC0(CX86_CCR3);
	FUNC1(CX86_CCR3, ccr3 ^ 0x80);
	FUNC0(0xc0);   /* dummy to change bus */

	if (FUNC0(CX86_CCR3) == ccr3) {       /* no DEVID regs. */
		ccr2 = FUNC0(CX86_CCR2);
		FUNC1(CX86_CCR2, ccr2 ^ 0x04);
		FUNC0(0xc0);  /* dummy */

		if (FUNC0(CX86_CCR2) == ccr2) /* old Cx486SLC/DLC */
			*dir0 = 0xfd;
		else {                          /* Cx486S A step */
			FUNC1(CX86_CCR2, ccr2);
			*dir0 = 0xfe;
		}
	} else {
		FUNC1(CX86_CCR3, ccr3);  /* restore CCR3 */

		/* read DIR0 and DIR1 CPU registers */
		*dir0 = FUNC0(CX86_DIR0);
		*dir1 = FUNC0(CX86_DIR1);
	}
}