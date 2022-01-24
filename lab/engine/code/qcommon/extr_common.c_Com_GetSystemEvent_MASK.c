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
struct TYPE_5__ {int /*<<< orphan*/  evTime; } ;
typedef  TYPE_1__ sysEvent_t ;
typedef  int /*<<< orphan*/  ev ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int MASK_QUEUED_EVENTS ; 
 int /*<<< orphan*/  SE_CONSOLE ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int) ; 
 int eventHead ; 
 TYPE_1__* eventQueue ; 
 int eventTail ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 

sysEvent_t FUNC7( void )
{
	sysEvent_t  ev;
	char        *s;

	// return if we have data
	if ( eventHead > eventTail )
	{
		eventTail++;
		return eventQueue[ ( eventTail - 1 ) & MASK_QUEUED_EVENTS ];
	}

	// check for console commands
	s = FUNC1();
	if ( s )
	{
		char  *b;
		int   len;

		len = FUNC6( s ) + 1;
		b = FUNC3( len );
		FUNC5( b, s );
		FUNC0( 0, SE_CONSOLE, 0, 0, len, b );
	}

	// return if we have data
	if ( eventHead > eventTail )
	{
		eventTail++;
		return eventQueue[ ( eventTail - 1 ) & MASK_QUEUED_EVENTS ];
	}

	// create an empty event to return
	FUNC4( &ev, 0, sizeof( ev ) );
	ev.evTime = FUNC2();

	return ev;
}