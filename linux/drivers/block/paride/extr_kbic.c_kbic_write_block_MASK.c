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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8( PIA *pi, char * buf, int count )

{       int     k;

        switch (pi->mode) {

        case 0:
        case 1:
        case 2: FUNC2(0x90); FUNC3(4); FUNC3(6); FUNC3(4); 
		for(k=0;k<count/2;k++) {
			FUNC2(buf[2*k+1]); FUNC3(0); FUNC3(4); 
			FUNC2(buf[2*k]);   FUNC3(5); FUNC3(4); 
		}
		break;

        case 3: FUNC2(0xa0); FUNC3(4); FUNC3(6); FUNC3(4); FUNC4(0);
		for(k=0;k<count/2;k++) {
			FUNC5(buf[2*k+1]); 
                        FUNC5(buf[2*k]);
                }
		FUNC3(4); FUNC3(0); FUNC3(4);
		break;

	case 4: FUNC2(0xa0); FUNC3(4); FUNC3(6); FUNC3(4); FUNC4(0);
                for(k=0;k<count/2;k++) FUNC7(FUNC0(buf,k));
                FUNC3(4); FUNC3(0); FUNC3(4);
                break;

        case 5: FUNC2(0xa0); FUNC3(4); FUNC3(6); FUNC3(4); FUNC4(0);
                for(k=0;k<count/4;k++) FUNC6(FUNC1(buf,k));
                FUNC3(4); FUNC3(0); FUNC3(4);
                break;

        }

}