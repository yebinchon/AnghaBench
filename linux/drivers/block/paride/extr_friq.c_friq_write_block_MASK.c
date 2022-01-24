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
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6( PIA *pi, char * buf, int count )
 
{	int	k;

	switch(pi->mode) {

	case 0:
	case 1: FUNC0(8); FUNC2(5);
        	for (k=0;k<count;k++) {
			FUNC1(buf[k]);
			FUNC2(7);FUNC2(5);
		}
		FUNC2(4);
		break;

	case 2: FUNC0(0xc8); FUNC2(5);
		for (k=0;k<count;k++) FUNC3(buf[k]);
		FUNC2(4);
		break;

        case 3: FUNC0(0xc8); FUNC2(5);
                for (k=0;k<count/2;k++) FUNC5(((u16 *)buf)[k]);
                FUNC2(4);
                break;

        case 4: FUNC0(0xc8); FUNC2(5);
                for (k=0;k<count/4;k++) FUNC4(((u32 *)buf)[k]);
                FUNC2(4);
                break;
	}
}