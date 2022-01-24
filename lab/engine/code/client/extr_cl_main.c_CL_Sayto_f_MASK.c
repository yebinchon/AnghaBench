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
typedef  int /*<<< orphan*/  cleanName ;
struct TYPE_3__ {char* stringData; int* stringOffsets; } ;
struct TYPE_4__ {TYPE_1__ gameState; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CS_PLAYERS ; 
 size_t CS_SERVERINFO ; 
 int FUNC1 () ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int MAX_NAME_LENGTH ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_2__ cl ; 
 int /*<<< orphan*/  qfalse ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*) ; 

void FUNC13( void ) {
	char		*rawname;
	char		name[MAX_NAME_LENGTH];
	char		cleanName[MAX_NAME_LENGTH];
	const char	*info;
	int			count;
	int			i;
	int			clientNum;
	char		*p;

	if ( FUNC1() < 3 ) {
		FUNC5 ("sayto <player name> <text>\n");
		return;
	}

	rawname = FUNC3(1);

	FUNC4( name, MAX_NAME_LENGTH, rawname );

	info = cl.gameState.stringData + cl.gameState.stringOffsets[CS_SERVERINFO];
	count = FUNC10( FUNC6( info, "sv_maxclients" ) );

	clientNum = -1;
	for( i = 0; i < count; i++ ) {

		info = cl.gameState.stringData + cl.gameState.stringOffsets[CS_PLAYERS+i];
		FUNC9( cleanName, FUNC6( info, "n" ), sizeof(cleanName) );
		FUNC7( cleanName );

		if ( !FUNC8( cleanName, name ) ) {
			clientNum = i;
			break;
		}
	}
	if( clientNum <= -1 )
	{
		FUNC5 ("No such player name: %s.\n", name);
		return;
	}

	p = FUNC2(2);

	if ( *p == '"' ) {
		p++;
		p[FUNC11(p)-1] = 0;
	}

	FUNC0(FUNC12("tell %i \"%s\"", clientNum, p ), qfalse);
}