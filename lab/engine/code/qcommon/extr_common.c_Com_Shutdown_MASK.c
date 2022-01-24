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
struct TYPE_2__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ com_journalFile ; 
 TYPE_1__* com_pipefile ; 
 scalar_t__ logfile ; 
 scalar_t__ pipefile ; 

void FUNC2 (void) {
	if (logfile) {
		FUNC0 (logfile);
		logfile = 0;
	}

	if ( com_journalFile ) {
		FUNC0( com_journalFile );
		com_journalFile = 0;
	}

	if( pipefile ) {
		FUNC0( pipefile );
		FUNC1( com_pipefile->string );
	}

}