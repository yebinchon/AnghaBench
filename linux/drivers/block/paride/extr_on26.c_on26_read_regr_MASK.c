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
 int /*<<< orphan*/  P1 ; 
 int /*<<< orphan*/  P2 ; 
 int FUNC0 (int,int) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8( PIA *pi, int cont, int regr )

{       int     a, b, r;

	r = (regr<<2) + 1 + cont;

        switch (pi->mode)  {

        case 0: FUNC4(1); P1; FUNC4(r); P2; FUNC4(0); P1; 
		FUNC5(6); a = FUNC2(); FUNC5(4);
		FUNC5(6); b = FUNC2(); FUNC5(4);
		FUNC5(6); FUNC5(4); FUNC5(6); FUNC5(4);
                return FUNC0(a,b);

        case 1: FUNC4(1); P1; FUNC4(r); P2; FUNC4(0); P1;
		FUNC5(0x26); a = FUNC1(); FUNC5(4); FUNC5(0x26); FUNC5(4);
                return a;

	case 2:
	case 3:
        case 4: FUNC6(1); FUNC6(1); FUNC5(5); FUNC7(r); FUNC5(4);
		FUNC6(0); FUNC6(0); FUNC5(0x24); a = FUNC3(); FUNC5(4);
		FUNC5(0x24); (void)FUNC3(); FUNC5(4);
                return a;

        }
        return -1;
}