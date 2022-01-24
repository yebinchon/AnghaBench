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
struct TYPE_5__ {int /*<<< orphan*/  (* function ) () ;struct TYPE_5__* next; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ cmd_function_t ;
struct TYPE_7__ {scalar_t__ integer; } ;
struct TYPE_6__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/ * cmd_argv ; 
 TYPE_1__* cmd_functions ; 
 TYPE_3__* com_cl_running ; 
 TYPE_2__* com_sv_running ; 
 int /*<<< orphan*/  FUNC8 () ; 

void	FUNC9( const char *text ) {	
	cmd_function_t	*cmd, **prev;

	// execute the command line
	FUNC3( text );		
	if ( !FUNC2() ) {
		return;		// no tokens
	}

	// check registered command functions	
	for ( prev = &cmd_functions ; *prev ; prev = &cmd->next ) {
		cmd = *prev;
		if ( !FUNC5( cmd_argv[0],cmd->name ) ) {
			// rearrange the links so that the command will be
			// near the head of the list next time it is used
			*prev = cmd->next;
			cmd->next = cmd_functions;
			cmd_functions = cmd;

			// perform the action
			if ( !cmd->function ) {
				// let the cgame or game handle it
				break;
			} else {
				cmd->function ();
			}
			return;
		}
	}
	
	// check cvars
	if ( FUNC4() ) {
		return;
	}

	// check client game commands
	if ( com_cl_running && com_cl_running->integer && FUNC1() ) {
		return;
	}

	// check server game commands
	if ( com_sv_running && com_sv_running->integer && FUNC6() ) {
		return;
	}

	// check ui commands
	if ( com_cl_running && com_cl_running->integer && FUNC7() ) {
		return;
	}

	// send it as a server command if we are connected
	// this will usually result in a chat message
	FUNC0 ( text );
}