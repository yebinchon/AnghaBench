#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int evPtrLength; struct TYPE_8__* evPtr; } ;
typedef  TYPE_1__ sysEvent_t ;
typedef  int /*<<< orphan*/  ev ;
struct TYPE_9__ {int integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ FUNC1 () ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int) ; 
 TYPE_2__* com_journal ; 
 int /*<<< orphan*/  com_journalFile ; 

sysEvent_t	FUNC5( void ) {
	int			r;
	sysEvent_t	ev;

	// either get an event from the system or the journal file
	if ( com_journal->integer == 2 ) {
		r = FUNC2( &ev, sizeof(ev), com_journalFile );
		if ( r != sizeof(ev) ) {
			FUNC0( ERR_FATAL, "Error reading from journal file" );
		}
		if ( ev.evPtrLength ) {
			ev.evPtr = FUNC4( ev.evPtrLength );
			r = FUNC2( ev.evPtr, ev.evPtrLength, com_journalFile );
			if ( r != ev.evPtrLength ) {
				FUNC0( ERR_FATAL, "Error reading from journal file" );
			}
		}
	} else {
		ev = FUNC1();

		// write the journal value out if needed
		if ( com_journal->integer == 1 ) {
			r = FUNC3( &ev, sizeof(ev), com_journalFile );
			if ( r != sizeof(ev) ) {
				FUNC0( ERR_FATAL, "Error writing to journal file" );
			}
			if ( ev.evPtrLength ) {
				r = FUNC3( ev.evPtr, ev.evPtrLength, com_journalFile );
				if ( r != ev.evPtrLength ) {
					FUNC0( ERR_FATAL, "Error writing to journal file" );
				}
			}
		}
	}

	return ev;
}