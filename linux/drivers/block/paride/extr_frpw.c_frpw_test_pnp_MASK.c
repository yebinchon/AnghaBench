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
struct TYPE_3__ {int delay; int saved_r0; int saved_r2; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7 ( PIA *pi )

/*  returns chip_type:   0 = Xilinx, 1 = ASIC   */

{	int olddelay, a, b;

#ifdef FRPW_HARD_RESET
        w0(0); w2(8); udelay(50); w2(0xc);   /* parallel bus reset */
        mdelay(1500);
#endif

	olddelay = pi->delay;
	pi->delay = 10;

	pi->saved_r0 = FUNC1();
        pi->saved_r2 = FUNC3();
	
	FUNC6(4); FUNC5(4); FUNC6(6); FUNC6(7);
	a = FUNC2() & 0xff; FUNC6(4); b = FUNC2() & 0xff;
	FUNC6(0xc); FUNC6(0xe); FUNC6(4);

	pi->delay = olddelay;
        FUNC5(pi->saved_r0);
        FUNC6(pi->saved_r2);

	return ((~a&0x40) && (b&0x40));
}