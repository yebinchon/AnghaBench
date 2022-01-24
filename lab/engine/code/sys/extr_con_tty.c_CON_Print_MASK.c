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
struct TYPE_2__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 TYPE_1__* com_ansiColor ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  ttycon_on ; 
 scalar_t__ ttycon_show_overdue ; 

void FUNC5( const char *msg )
{
	if (!msg[0])
		return;

	FUNC0( );

	if( com_ansiColor && com_ansiColor->integer )
		FUNC2( msg );
	else
		FUNC3( msg, stderr );

	if (!ttycon_on) {
		// CON_Hide didn't do anything.
		return;
	}

	// Only print prompt when msg ends with a newline, otherwise the console
	//   might get garbled when output does not fit on one line.
	if (msg[FUNC4(msg) - 1] == '\n') {
		FUNC1();

		// Run CON_Show the number of times it was deferred.
		while (ttycon_show_overdue > 0) {
			FUNC1();
			ttycon_show_overdue--;
		}
	}
	else
	{
		// Defer calling CON_Show
		ttycon_show_overdue++;
	}
}