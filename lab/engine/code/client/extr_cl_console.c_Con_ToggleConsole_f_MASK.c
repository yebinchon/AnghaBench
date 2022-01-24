#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ state; } ;
struct TYPE_6__ {scalar_t__ integer; } ;
struct TYPE_5__ {int /*<<< orphan*/  widthInChars; } ;

/* Variables and functions */
 scalar_t__ CA_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int KEYCATCH_CONSOLE ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_3__ clc ; 
 TYPE_2__* con_autoclear ; 
 TYPE_1__ g_consoleField ; 
 int /*<<< orphan*/  g_console_field_width ; 

void FUNC4 (void) {
	// Can't toggle the console when it's the only thing available
	if ( clc.state == CA_DISCONNECTED && FUNC2( ) == KEYCATCH_CONSOLE ) {
		return;
	}

	if ( con_autoclear->integer ) {
		FUNC1( &g_consoleField );
	}

	g_consoleField.widthInChars = g_console_field_width;

	FUNC0 ();
	FUNC3( FUNC2( ) ^ KEYCATCH_CONSOLE );
}