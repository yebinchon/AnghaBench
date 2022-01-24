#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * xcommand_t ;
struct TYPE_4__ {struct TYPE_4__* next; int /*<<< orphan*/ * complete; int /*<<< orphan*/ * function; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ cmd_function_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 TYPE_1__* FUNC3 (int) ; 
 TYPE_1__* cmd_functions ; 

void	FUNC4( const char *cmd_name, xcommand_t function ) {
	cmd_function_t	*cmd;
	
	// fail if the command already exists
	if( FUNC0( cmd_name ) )
	{
		// allow completion-only commands to be silently doubled
		if( function != NULL )
			FUNC1( "Cmd_AddCommand: %s already defined\n", cmd_name );
		return;
	}

	// use a small malloc to avoid zone fragmentation
	cmd = FUNC3 (sizeof(cmd_function_t));
	cmd->name = FUNC2( cmd_name );
	cmd->function = function;
	cmd->complete = NULL;
	cmd->next = cmd_functions;
	cmd_functions = cmd;
}