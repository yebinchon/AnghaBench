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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7( PIA *pi, char * buf, int count )

{       int     ph, k, last, d;

        switch (pi->mode) {

        case 0:
        case 1:
        case 2: FUNC1(0xa1); FUNC2(1); FUNC2(3); FUNC2(1); FUNC2(5);
                ph = 0;  last = 0x8000;
                for (k=0;k<count;k++) {
                        d = buf[k];
                        if (d != last) { last = d; FUNC1(d); }
                        FUNC2(4+ph);
                        ph = 1 - ph;
                }
                FUNC2(7); FUNC2(4);
                break;

        case 3: if (count < 512) FUNC0(0x84,1);
		FUNC3(0x40);
                for (k=0;k<count;k++) FUNC4(buf[k]);
		if (count < 512) FUNC0(0x84,0);
                break;

        case 4: if (count < 512) FUNC0(0x84,1);
		FUNC3(0x40);
                for (k=0;k<count/2;k++) FUNC6(((u16 *)buf)[k]);
		if (count < 512) FUNC0(0x84,0);
                break;

        case 5: if (count < 512) FUNC0(0x84,1);
		FUNC3(0x40);
                for (k=0;k<count/4;k++) FUNC5(((u32 *)buf)[k]);
		if (count < 512) FUNC0(0x84,0);
                break;

        }

}