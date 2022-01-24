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
struct TYPE_3__ {size_t device; size_t mode; int /*<<< orphan*/  delay; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 char* EPIA_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1( PIA *pi, char * scratch, int verbose )

{       char    *mode_string[6] = {"4-bit","5/3","8-bit",
				   "EPP-8","EPP-16","EPP-32"};

        FUNC0("%s: epia %s, Shuttle EPIA at 0x%x, ",
                pi->device,EPIA_VERSION,pi->port);
        FUNC0("mode %d (%s), delay %d\n",pi->mode,
		mode_string[pi->mode],pi->delay);

}