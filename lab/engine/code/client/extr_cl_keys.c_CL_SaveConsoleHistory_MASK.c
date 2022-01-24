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
typedef  int /*<<< orphan*/  fileHandle_t ;
struct TYPE_2__ {char* buffer; int /*<<< orphan*/  scroll; int /*<<< orphan*/  cursor; } ;

/* Variables and functions */
 int COMMAND_HISTORY ; 
 int /*<<< orphan*/  CONSOLE_HISTORY_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int MAX_CONSOLE_SAVE_BUFFER ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 char* consoleSaveBuffer ; 
 int consoleSaveBufferSize ; 
 TYPE_1__* historyEditLines ; 
 int nextHistoryLine ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

void FUNC7( void )
{
	int						i;
	int						lineLength, saveBufferLength, additionalLength;
	fileHandle_t	f;

	consoleSaveBuffer[ 0 ] = '\0';

	i = ( nextHistoryLine - 1 ) % COMMAND_HISTORY;
	do
	{
		if( historyEditLines[ i ].buffer[ 0 ] )
		{
			lineLength = FUNC5( historyEditLines[ i ].buffer );
			saveBufferLength = FUNC5( consoleSaveBuffer );

			//ICK
			additionalLength = lineLength + FUNC5( "999 999 999  " );

			if( saveBufferLength + additionalLength < MAX_CONSOLE_SAVE_BUFFER )
			{
				FUNC4( consoleSaveBuffer, MAX_CONSOLE_SAVE_BUFFER,
						FUNC6( "%d %d %d %s ",
						historyEditLines[ i ].cursor,
						historyEditLines[ i ].scroll,
						lineLength,
						historyEditLines[ i ].buffer ) );
			}
			else
				break;
		}
		i = ( i - 1 + COMMAND_HISTORY ) % COMMAND_HISTORY;
	}
	while( i != ( nextHistoryLine - 1 ) % COMMAND_HISTORY );

	consoleSaveBufferSize = FUNC5( consoleSaveBuffer );

	f = FUNC2( CONSOLE_HISTORY_FILE );
	if( !f )
	{
		FUNC0( "Couldn't write %s.\n", CONSOLE_HISTORY_FILE );
		return;
	}

	if( FUNC3( consoleSaveBuffer, consoleSaveBufferSize, f ) < consoleSaveBufferSize )
		FUNC0( "Couldn't write %s.\n", CONSOLE_HISTORY_FILE );

	FUNC1( f );
}