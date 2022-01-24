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
struct TYPE_3__ {int mode; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 char FUNC0 (int,int) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5( PIA *pi, char * buf, int count )

{	int  k, a, b, c, d;

	switch (pi->mode) {

	case 0:	FUNC3(0x48); FUNC4(0xe); FUNC4(6);
		for (k=0;k<count/2;k++) {
			FUNC4(7); FUNC4(6); FUNC4(2);
			a = FUNC2(); FUNC3(0x58); b = FUNC2();
			FUNC4(0); d = FUNC2(); FUNC3(0x48); c = FUNC2();
			buf[2*k] = FUNC0(c,d);
			buf[2*k+1] = FUNC0(a,b);
		}
		FUNC4(0xc);
		break;

	case 1: FUNC3(0x58); FUNC4(0xe); FUNC4(6);
		for (k=0;k<count/2;k++) {
			FUNC4(0x27); FUNC4(0x26); FUNC4(0x22);
			a = FUNC1(); FUNC4(0x20); b = FUNC1();
			buf[2*k] = b; buf[2*k+1] = a;
		}
		FUNC4(0x26); FUNC4(0xc);
		break;
	}
}