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
 scalar_t__* cont_map ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9( PIA *pi, int cont, int regr )

{       int     a, b, r;

	regr += cont_map[cont];

        switch (pi->mode)  {

        case 0: r = regr^0x39;
                FUNC6(r); FUNC7(1); FUNC7(3); FUNC6(r);
                a = FUNC3(); FUNC7(1); b = FUNC3(); FUNC7(4);
                return FUNC0(a,b);

        case 1: r = regr^0x31;
                FUNC6(r); FUNC7(1); FUNC6(r&0x37); 
                FUNC7(3); FUNC7(5); FUNC6(r|0xf0);
                a = FUNC3(); b = FUNC4(); FUNC7(4);
                return FUNC1(a,b);

        case 2: r = regr^0x29;
                FUNC6(r); FUNC7(1); FUNC7(0X21); FUNC7(0x23); 
                a = FUNC2(); FUNC7(4);
                return a;

	case 3:
	case 4:
        case 5: FUNC8(regr); FUNC7(0x24); a = FUNC5(); FUNC7(4);
                return a;

        }
        return -1;
}