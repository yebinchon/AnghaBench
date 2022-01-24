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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4( PIA *pi, int cont, int regr, int val )

{       int  r;

        r = (regr<<2) + 1 + cont;

        switch (pi->mode)  {

        case 0:
        case 1: FUNC0(1); P1; FUNC0(r); P2; FUNC0(0); P1;
		FUNC0(val); P2; FUNC0(val); P2;
		break;

	case 2:
	case 3:
        case 4: FUNC2(1); FUNC2(1); FUNC1(5); FUNC3(r); FUNC1(4);
		FUNC2(0); FUNC2(0); 
		FUNC1(5); FUNC3(val); FUNC1(4);
		FUNC1(5); FUNC3(val); FUNC1(4);
                break;
        }
}