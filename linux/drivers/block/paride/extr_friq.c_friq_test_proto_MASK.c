#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int saved_r0; int /*<<< orphan*/  mode; int /*<<< orphan*/  port; int /*<<< orphan*/  device; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10( PIA *pi, char * scratch, int verbose )

{       int     j, k, r;
	int	e[2] = {0,0};

	pi->saved_r0 = FUNC7();	
	FUNC9(0xff); FUNC8(20); FUNC0(0x3d); /* turn the power on */
	FUNC8(500);
	FUNC9(pi->saved_r0);

	FUNC1(pi);
	for (j=0;j<2;j++) {
                FUNC5(pi,0,6,0xa0+j*0x10);
                for (k=0;k<256;k++) {
                        FUNC5(pi,0,2,k^0xaa);
                        FUNC5(pi,0,3,k^0x55);
                        if (FUNC4(pi,0,2) != (k^0xaa)) e[j]++;
                        }
                }
	FUNC2(pi);

	FUNC1(pi);
        FUNC3(pi,scratch,512,0x10);
        r = 0;
        for (k=0;k<128;k++) if (scratch[k] != k) r++;
	FUNC2(pi);

        if (verbose)  {
            FUNC6("%s: friq: port 0x%x, mode %d, test=(%d,%d,%d)\n",
                   pi->device,pi->port,pi->mode,e[0],e[1],r);
        }

        return (r || (e[0] && e[1]));
}