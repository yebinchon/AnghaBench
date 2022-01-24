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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int mode; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int /*<<< orphan*/  cec4 ; 
 char FUNC0 (int,int) ; 
 char FUNC1 () ; 
 int FUNC2 () ; 
 char FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8( PIA *pi, char * buf, int count, int regr )

{       int     h, l, k, ph;

        switch(pi->mode) {

        case 0: FUNC7(4); FUNC6(regr); cec4;
                for (k=0;k<count;k++) {
                        FUNC7(6); l = FUNC2();
                        FUNC7(4); h = FUNC2();
                        buf[k] = FUNC0(l,h);
                }
                FUNC7(4);
                break;

        case 1: ph = 2;
                FUNC7(4); FUNC6(regr + 0xc0); cec4;
                FUNC6(0xff);
                for (k=0;k<count;k++) {
                        FUNC7(0xa4 + ph); 
                        buf[k] = FUNC1();
                        ph = 2 - ph;
                } 
                FUNC7(0xac); FUNC7(0xa4); FUNC7(4);
                break;

        case 2: FUNC7(4); FUNC6(regr + 0x80); cec4;
                for (k=0;k<count;k++) buf[k] = FUNC3();
                FUNC7(0xac); FUNC7(0xa4);
                FUNC7(4);
                break;

	case 3: FUNC7(4); FUNC6(regr + 0x80); cec4;
		for (k=0;k<count-2;k++) buf[k] = FUNC3();
		FUNC7(0xac); FUNC7(0xa4);
		buf[count-2] = FUNC3();
		buf[count-1] = FUNC3();
		FUNC7(4);
		break;

	case 4: FUNC7(4); FUNC6(regr + 0x80); cec4;
                for (k=0;k<(count/2)-1;k++) ((u16 *)buf)[k] = FUNC5();
                FUNC7(0xac); FUNC7(0xa4);
                buf[count-2] = FUNC3();
                buf[count-1] = FUNC3();
                FUNC7(4);
                break;

	case 5: FUNC7(4); FUNC6(regr + 0x80); cec4;
                for (k=0;k<(count/4)-1;k++) ((u32 *)buf)[k] = FUNC4();
                buf[count-4] = FUNC3();
                buf[count-3] = FUNC3();
                FUNC7(0xac); FUNC7(0xa4);
                buf[count-2] = FUNC3();
                buf[count-1] = FUNC3();
                FUNC7(4);
                break;

        }
}