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
struct TYPE_3__ {int line; void* buffer; void* end_p; void* script_p; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 size_t MAX_INCLUDES ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 TYPE_1__* script ; 
 TYPE_1__* scriptstack ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,void**,int) ; 

void FUNC5( const char *filename, int index ){
	int size;
	void* buffer;

	script++;
	if ( script == &scriptstack[MAX_INCLUDES] ) {
		FUNC0( "script file exceeded MAX_INCLUDES" );
	}
	FUNC3( script->filename, FUNC1( filename ) );

	size = FUNC4( script->filename, &buffer, index );

	if ( size == -1 ) {
		FUNC2( "Script file %s was not found\n", script->filename );
		script--;
	}
	else
	{
		if ( index > 0 ) {
			FUNC2( "entering %s (%d)\n", script->filename, index + 1 );
		}
		else{
			FUNC2( "entering %s\n", script->filename );
		}

		script->buffer = buffer;
		script->line = 1;
		script->script_p = script->buffer;
		script->end_p = script->buffer + size;
	}
}