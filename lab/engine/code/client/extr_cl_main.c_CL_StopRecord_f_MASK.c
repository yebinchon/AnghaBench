#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* spDemoRecording; void* demorecording; scalar_t__ demofile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,scalar_t__) ; 
 TYPE_1__ clc ; 
 void* qfalse ; 

void FUNC3( void ) {
	int		len;

	if ( !clc.demorecording ) {
		FUNC0 ("Not recording a demo.\n");
		return;
	}

	// finish up
	len = -1;
	FUNC2 (&len, 4, clc.demofile);
	FUNC2 (&len, 4, clc.demofile);
	FUNC1 (clc.demofile);
	clc.demofile = 0;
	clc.demorecording = qfalse;
	clc.spDemoRecording = qfalse;
	FUNC0 ("Stopped demo.\n");
}