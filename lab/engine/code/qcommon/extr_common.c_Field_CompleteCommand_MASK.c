#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_4__ {char* buffer; int /*<<< orphan*/  cursor; } ;
struct TYPE_3__ {scalar_t__ integer; } ;

/* Variables and functions */
 int FUNC0 () ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FindMatches ; 
 int /*<<< orphan*/  PrintCvarMatches ; 
 int /*<<< orphan*/  PrintMatches ; 
 TYPE_2__* completionField ; 
 char* completionString ; 
 TYPE_1__* con_autochat ; 
 scalar_t__ matchCount ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,scalar_t__) ; 
 scalar_t__ qtrue ; 
 scalar_t__* shortestMatch ; 
 scalar_t__ FUNC10 (char*) ; 

void FUNC11( char *cmd,
		qboolean doCommands, qboolean doCvars )
{
	int		completionArgument = 0;

	// Skip leading whitespace and quotes
	cmd = FUNC5( cmd, " \"" );

	FUNC4( cmd );
	completionArgument = FUNC0( );

	// If there is trailing whitespace on the cmd
	if( *( cmd + FUNC10( cmd ) - 1 ) == ' ' )
	{
		completionString = "";
		completionArgument++;
	}
	else
		completionString = FUNC1( completionArgument - 1 );

#ifndef DEDICATED
	// add a '\' to the start of the buffer if it might be sent as chat otherwise
	if( con_autochat->integer && completionField->buffer[ 0 ] &&
			completionField->buffer[ 0 ] != '\\' )
	{
		if( completionField->buffer[ 0 ] != '/' )
		{
			// Buffer is full, refuse to complete
			if( FUNC10( completionField->buffer ) + 1 >=
				sizeof( completionField->buffer ) )
				return;

			FUNC9( &completionField->buffer[ 1 ],
				&completionField->buffer[ 0 ],
				FUNC10( completionField->buffer ) + 1 );
			completionField->cursor++;
		}

		completionField->buffer[ 0 ] = '\\';
	}
#endif

	if( completionArgument > 1 )
	{
		const char *baseCmd = FUNC1( 0 );
		char *p;

#ifndef DEDICATED
		// This should always be true
		if( baseCmd[ 0 ] == '\\' || baseCmd[ 0 ] == '/' )
			baseCmd++;
#endif

		if( ( p = FUNC8( cmd ) ) )
			FUNC11( p + 1, qtrue, qtrue ); // Compound command
		else
			FUNC3( baseCmd, cmd, completionArgument ); 
	}
	else
	{
		if( completionString[0] == '\\' || completionString[0] == '/' )
			completionString++;

		matchCount = 0;
		shortestMatch[ 0 ] = 0;

		if( FUNC10( completionString ) == 0 )
			return;

		if( doCommands )
			FUNC2( FindMatches );

		if( doCvars )
			FUNC6( FindMatches );

		if( !FUNC7( ) )
		{
			// run through again, printing matches
			if( doCommands )
				FUNC2( PrintMatches );

			if( doCvars )
				FUNC6( PrintCvarMatches );
		}
	}
}