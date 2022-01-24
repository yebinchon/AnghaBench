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
struct TYPE_5__ {size_t device; size_t mode; int private; int /*<<< orphan*/  delay; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FRIQ_VERSION ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4( PIA *pi, char * scratch, int verbose )

{       char    *mode_string[6] = {"4-bit","8-bit",
				   "EPP-8","EPP-16","EPP-32"};

        FUNC3("%s: friq %s, Freecom IQ ASIC-2 adapter at 0x%x, ", pi->device,
		FRIQ_VERSION,pi->port);
        FUNC3("mode %d (%s), delay %d\n",pi->mode,
		mode_string[pi->mode],pi->delay);

	pi->private = 1;
	FUNC1(pi);
	FUNC0(0x9e);  		/* disable sleep timer */
	FUNC2(pi);

}