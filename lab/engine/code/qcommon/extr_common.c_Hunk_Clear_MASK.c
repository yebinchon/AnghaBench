#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ tempHighwater; scalar_t__ temp; scalar_t__ permanent; scalar_t__ mark; } ;
struct TYPE_5__ {scalar_t__ tempHighwater; scalar_t__ temp; scalar_t__ permanent; scalar_t__ mark; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__ hunk_high ; 
 TYPE_2__ hunk_low ; 
 TYPE_2__* hunk_permanent ; 
 TYPE_1__* hunk_temp ; 
 int /*<<< orphan*/ * hunkblocks ; 

void FUNC6( void ) {

#ifndef DEDICATED
	FUNC1();
	FUNC2();
#endif
	FUNC4();
#ifndef DEDICATED
	FUNC0();
#endif
	hunk_low.mark = 0;
	hunk_low.permanent = 0;
	hunk_low.temp = 0;
	hunk_low.tempHighwater = 0;

	hunk_high.mark = 0;
	hunk_high.permanent = 0;
	hunk_high.temp = 0;
	hunk_high.tempHighwater = 0;

	hunk_permanent = &hunk_low;
	hunk_temp = &hunk_high;

	FUNC3( "Hunk_Clear: reset the hunk ok\n" );
	FUNC5();
#ifdef HUNK_DEBUG
	hunkblocks = NULL;
#endif
}