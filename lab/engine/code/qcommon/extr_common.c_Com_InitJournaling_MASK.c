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
struct TYPE_3__ {int integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVAR_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 
 TYPE_1__* com_journal ; 
 scalar_t__ com_journalDataFile ; 
 scalar_t__ com_journalFile ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC6( void ) {
	FUNC1( "journal" );
	com_journal = FUNC2 ("journal", "0", CVAR_INIT);
	if ( !com_journal->integer ) {
		return;
	}

	if ( com_journal->integer == 1 ) {
		FUNC0( "Journaling events\n");
		com_journalFile = FUNC5( "journal.dat" );
		com_journalDataFile = FUNC5( "journaldata.dat" );
	} else if ( com_journal->integer == 2 ) {
		FUNC0( "Replaying journaled events\n");
		FUNC4( "journal.dat", &com_journalFile, qtrue );
		FUNC4( "journaldata.dat", &com_journalDataFile, qtrue );
	}

	if ( !com_journalFile || !com_journalDataFile ) {
		FUNC3( "com_journal", "0" );
		com_journalFile = 0;
		com_journalDataFile = 0;
		FUNC0( "Couldn't open journal files\n" );
	}
}