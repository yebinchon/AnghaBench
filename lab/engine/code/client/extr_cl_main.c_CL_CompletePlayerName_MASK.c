#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  namesPtr ;
typedef  int /*<<< orphan*/  names ;
struct TYPE_4__ {char* stringData; int* stringOffsets; } ;
struct TYPE_6__ {TYPE_1__ gameState; } ;
struct TYPE_5__ {int clientNum; } ;

/* Variables and functions */
 int CS_PLAYERS ; 
 size_t CS_SERVERINFO ; 
 int /*<<< orphan*/  Com_strCompare ; 
 int /*<<< orphan*/  FUNC0 (char const**,int) ; 
 char* FUNC1 (char const*,char*) ; 
 int MAX_CLIENTS ; 
 int MAX_NAME_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (char*) ; 
 TYPE_3__ cl ; 
 TYPE_2__ clc ; 
 int /*<<< orphan*/  FUNC5 (void*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6( char *args, int argNum )
{
	if( argNum == 2 )
	{
		char		names[MAX_CLIENTS][MAX_NAME_LENGTH];
		const char	*namesPtr[MAX_CLIENTS];
		int			i;
		int			clientCount;
		int			nameCount;
		const char *info;
		const char *name;

		//configstring
		info = cl.gameState.stringData + cl.gameState.stringOffsets[CS_SERVERINFO];
		clientCount = FUNC4( FUNC1( info, "sv_maxclients" ) );

		nameCount = 0;

		for( i = 0; i < clientCount; i++ ) {
			if( i == clc.clientNum )
				continue;

			info = cl.gameState.stringData + cl.gameState.stringOffsets[CS_PLAYERS+i];

			name = FUNC1( info, "n" );
			if( name[0] == '\0' )
				continue;
			FUNC3( names[nameCount], name, sizeof(names[nameCount]) );
			FUNC2( names[nameCount] );

			namesPtr[nameCount] = names[nameCount];
			nameCount++;
		}
		FUNC5( (void*)namesPtr, nameCount, sizeof( namesPtr[0] ), Com_strCompare );

		FUNC0( namesPtr, nameCount );
	}
}