#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int saved_r0; int saved_r2; int delay; int mode; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  P1 ; 
 int /*<<< orphan*/  P2 ; 
 int RESET_WAIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11( PIA *pi)  /* hard reset */

{       int     i, m, d, x=0, y=0;

        pi->saved_r0 = FUNC5();
        pi->saved_r2 = FUNC7();

        d = pi->delay;
        m = pi->mode;
        pi->delay = 5;
        pi->mode = 0;

        FUNC10(0xc);

        FUNC0(0x30); FUNC0(0); 

        FUNC9(0xfe);FUNC9(0xaa);FUNC9(0x55);FUNC9(0);FUNC9(0xff);
        i = ((FUNC6() & 0xf0) << 4); FUNC9(0x87);
        i |= (FUNC6() & 0xf0); FUNC9(0x78);
        FUNC9(0x20);FUNC10(4);FUNC10(5);
        i |= ((FUNC6() & 0xf0) >> 4);
        FUNC10(4);FUNC9(0xff);

        if (i == 0xb5f) {

            FUNC9(2); P1; FUNC9(0);   P2;
            FUNC9(3); P1; FUNC9(0);   P2;
            FUNC9(2); P1; FUNC9(8);   P2; FUNC8(100);
            FUNC9(2); P1; FUNC9(0xa); P2; FUNC8(100);
            FUNC9(2); P1; FUNC9(8);   P2; FUNC8(1000);
            
            FUNC3(pi,0,6,0xa0);

            for (i=0;i<RESET_WAIT;i++) {
                FUNC3(pi,0,6,0xa0);
                x = FUNC2(pi,0,7);
                FUNC3(pi,0,6,0xb0);
                y = FUNC2(pi,0,7);
                if (!((x&0x80)||(y&0x80))) break;
                FUNC1(100);
            }

	    if (i == RESET_WAIT) 
		FUNC4("on26: Device reset failed (%x,%x)\n",x,y);

            FUNC9(4); P1; FUNC9(4); P1;
        }

        FUNC0(0x30);

        pi->delay = d;
        pi->mode = m;
        FUNC9(pi->saved_r0);
        FUNC10(pi->saved_r2);

        return 5;
}