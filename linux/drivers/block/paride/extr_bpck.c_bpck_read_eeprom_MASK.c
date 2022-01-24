#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int mode; int delay; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5 ( PIA *pi, char * buf )

{       int i, j, k, p, v, f, om, od;

	FUNC4(pi);

	om = pi->mode;  od = pi->delay;
	pi->mode = 0; pi->delay = 6;

	FUNC2(pi);
	
	FUNC1(4,0);
	for (i=0;i<64;i++) {
	    FUNC1(6,8);  
	    FUNC1(6,0xc);
	    p = 0x100;
	    for (k=0;k<9;k++) {
		f = (((i + 0x180) & p) != 0) * 2;
		FUNC1(6,f+0xc); 
		FUNC1(6,f+0xd); 
		FUNC1(6,f+0xc);
		p = (p >> 1);
	    }
	    for (j=0;j<2;j++) {
		v = 0;
		for (k=0;k<8;k++) {
		    FUNC1(6,0xc); 
		    FUNC1(6,0xd); 
		    FUNC1(6,0xc); 
		    f = FUNC0(0);
		    v = 2*v + (f == 0x84);
		}
		buf[2*i+1-j] = v;
	    }
	}
	FUNC1(6,8);
	FUNC1(6,0);
	FUNC1(5,8);

	FUNC3(pi);

        if (om >= 2) {
                FUNC2(pi);
                FUNC1(7,3);
                FUNC1(4,8);
                FUNC3(pi);
        }

	pi->mode = om; pi->delay = od;
}