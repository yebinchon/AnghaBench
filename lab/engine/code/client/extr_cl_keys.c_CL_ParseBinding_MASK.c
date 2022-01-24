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
typedef  int qboolean ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {int /*<<< orphan*/ * binding; } ;

/* Variables and functions */
 scalar_t__ CA_DISCONNECTED ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char,char*,int,unsigned int) ; 
 scalar_t__ FUNC3 () ; 
 int MAX_STRING_CHARS ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 TYPE_2__ clc ; 
 scalar_t__ FUNC5 (char) ; 
 TYPE_1__* keys ; 
 char* FUNC6 (char*,char) ; 

void FUNC7( int key, qboolean down, unsigned time )
{
	char buf[ MAX_STRING_CHARS ], *p = buf, *end;
	qboolean allCommands, allowUpCmds;

	if( clc.state == CA_DISCONNECTED && FUNC3( ) == 0 )
		return;
	if( !keys[key].binding || !keys[key].binding[0] )
		return;
	FUNC4( buf, keys[key].binding, sizeof( buf ) );

	// run all bind commands if console, ui, etc aren't reading keys
	allCommands = ( FUNC3( ) == 0 );

	// allow button up commands if in game even if key catcher is set
	allowUpCmds = ( clc.state != CA_DISCONNECTED );

	while( 1 )
	{
		while( FUNC5( *p ) )
			p++;
		end = FUNC6( p, ';' );
		if( end )
			*end = '\0';
		if( *p == '+' )
		{
			// button commands add keynum and time as parameters
			// so that multiple sources can be discriminated and
			// subframe corrected
			if ( allCommands || ( allowUpCmds && !down ) ) {
				char cmd[1024];
				FUNC2( cmd, sizeof( cmd ), "%c%s %d %d\n",
					( down ) ? '+' : '-', p + 1, key, time );
				FUNC1( cmd );
			}
		}
		else if( down )
		{
			// normal commands only execute on key press
			if ( allCommands || FUNC0( p ) ) {
				FUNC1( p );
				FUNC1( "\n" );
			}
		}
		if( !end )
			break;
		p = end + 1;
	}
}