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
 int* cont_map ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8( PIA *pi, int cont, int regr )

{       int r, l, h;

	r = regr + cont_map[cont];

	switch (pi->mode) {

	case 0: FUNC6(r & 0xf); FUNC6(r); FUNC5(2); FUNC5(4);
	        l = FUNC3();
        	FUNC5(4);
        	h = FUNC3();
        	return FUNC1(l,h);

	case 1: FUNC6(r & 0xf); FUNC6(r); FUNC5(2);
	        FUNC0(); FUNC5(0x20);
		FUNC5(4); h = FUNC2();
	        FUNC5(1); FUNC5(0x20);
	        return h;

	case 2:
	case 3:
	case 4: FUNC6(r); FUNC7(9); FUNC7(0); FUNC7(0x20);
		h = FUNC4();
		FUNC7(0);
		return h;

	}
	return -1;
}