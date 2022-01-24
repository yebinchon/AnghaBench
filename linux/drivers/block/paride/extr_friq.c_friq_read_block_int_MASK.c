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
 int /*<<< orphan*/  FUNC0 (int) ; 
 char FUNC1 (int,int) ; 
 char FUNC2 () ; 
 int FUNC3 () ; 
 char FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9( PIA *pi, char * buf, int count, int regr )

{       int     h, l, k, ph;

        switch(pi->mode) {

        case 0: FUNC0(regr); 
                for (k=0;k<count;k++) {
                        FUNC8(6); l = FUNC3();
                        FUNC8(4); h = FUNC3();
                        buf[k] = FUNC1(l,h);
                }
                FUNC8(4);
                break;

        case 1: ph = 2;
                FUNC0(regr+0xc0); 
                FUNC7(0xff);
                for (k=0;k<count;k++) {
                        FUNC8(0xa4 + ph); 
                        buf[k] = FUNC2();
                        ph = 2 - ph;
                } 
                FUNC8(0xac); FUNC8(0xa4); FUNC8(4);
                break;

	case 2: FUNC0(regr+0x80);
		for (k=0;k<count-2;k++) buf[k] = FUNC4();
		FUNC8(0xac); FUNC8(0xa4);
		buf[count-2] = FUNC4();
		buf[count-1] = FUNC4();
		FUNC8(4);
		break;

	case 3: FUNC0(regr+0x80);
                for (k=0;k<(count/2)-1;k++) ((u16 *)buf)[k] = FUNC6();
                FUNC8(0xac); FUNC8(0xa4);
                buf[count-2] = FUNC4();
                buf[count-1] = FUNC4();
                FUNC8(4);
                break;

	case 4: FUNC0(regr+0x80);
                for (k=0;k<(count/4)-1;k++) ((u32 *)buf)[k] = FUNC5();
                buf[count-4] = FUNC4();
                buf[count-3] = FUNC4();
                FUNC8(0xac); FUNC8(0xa4);
                buf[count-2] = FUNC4();
                buf[count-1] = FUNC4();
                FUNC8(4);
                break;

        }
}