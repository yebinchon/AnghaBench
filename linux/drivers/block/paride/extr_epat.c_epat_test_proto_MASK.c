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
struct TYPE_6__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  port; int /*<<< orphan*/  device; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static int FUNC8( PIA *pi, char * scratch, int verbose )

{       int     k, j, f, cc;
	int	e[2] = {0,0};

        FUNC4(pi);
	cc = FUNC0(0xd);
	FUNC5(pi);

	FUNC4(pi);
	for (j=0;j<2;j++) {
  	    FUNC3(6,0xa0+j*0x10);
            for (k=0;k<256;k++) {
                FUNC3(2,k^0xaa);
                FUNC3(3,k^0x55);
                if (FUNC1(2) != (k^0xaa)) e[j]++;
                }
	    }
        FUNC5(pi);

        f = 0;
        FUNC4(pi);
        FUNC2(0x13,1); FUNC2(0x13,0); FUNC2(0xa,0x11);
        FUNC6(pi,scratch,512);
	
        for (k=0;k<256;k++) {
            if ((scratch[2*k] & 0xff) != k) f++;
            if ((scratch[2*k+1] & 0xff) != (0xff-k)) f++;
        }
        FUNC5(pi);

        if (verbose)  {
            FUNC7("%s: epat: port 0x%x, mode %d, ccr %x, test=(%d,%d,%d)\n",
		   pi->device,pi->port,pi->mode,cc,e[0],e[1],f);
	}
	
        return (e[0] && e[1]) || f;
}