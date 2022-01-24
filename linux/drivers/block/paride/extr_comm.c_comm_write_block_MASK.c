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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9( PIA *pi, char * buf, int count )

{       int	k;

        switch (pi->mode) {

        case 0:
        case 1: FUNC3(0x68); P1;
        	for (k=0;k<count;k++) {
                        FUNC4(5); FUNC3(buf[k^1]); FUNC4(7);
                }
                FUNC4(5); FUNC4(4);
                break;

        case 2: FUNC5(0x48); (void)FUNC2();
                for (k=0;k<count;k++) FUNC6(buf[k^1]);
                break;

        case 3: FUNC5(0x48); (void)FUNC2();
                for (k=0;k<count/2;k++) FUNC8(FUNC0(buf,k));
                break;

        case 4: FUNC5(0x48); (void)FUNC2();
                for (k=0;k<count/4;k++) FUNC7(FUNC1(buf,k));
                break;


        }
}