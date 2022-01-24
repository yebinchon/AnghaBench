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
struct TYPE_4__ {int /*<<< orphan*/  name; struct TYPE_4__* next; } ;
typedef  TYPE_1__ cmd_function_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* cmd_functions ; 

cmd_function_t *FUNC1( const char *cmd_name )
{
	cmd_function_t *cmd;
	for( cmd = cmd_functions; cmd; cmd = cmd->next )
		if( !FUNC0( cmd_name, cmd->name ) )
			return cmd;
	return NULL;
}