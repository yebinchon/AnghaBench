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
struct TYPE_5__ {size_t mode; int /*<<< orphan*/  delay; int /*<<< orphan*/  port; int /*<<< orphan*/  device; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int /*<<< orphan*/  EPAT_VERSION ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,int,...) ; 

__attribute__((used)) static void FUNC5( PIA *pi, char * scratch, int verbose )

{	int	ver;
        char    *mode_string[6] = 
		   {"4-bit","5/3","8-bit","EPP-8","EPP-16","EPP-32"};

	FUNC2(pi);
	FUNC1(0xa,0x38);		/* read the version code */
        ver = FUNC0(0xb);
        FUNC3(pi);

	FUNC4("%s: epat %s, Shuttle EPAT chip %x at 0x%x, ",
		pi->device,EPAT_VERSION,ver,pi->port);
	FUNC4("mode %d (%s), delay %d\n",pi->mode,
		mode_string[pi->mode],pi->delay);

}