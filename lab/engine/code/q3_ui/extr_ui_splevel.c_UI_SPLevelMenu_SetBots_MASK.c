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
typedef  int /*<<< orphan*/  bots ;
struct TYPE_2__ {int numBots; char* selectedArenaInfo; char** botNames; scalar_t__* botPics; } ;

/* Variables and functions */
 char* FUNC0 (char*,char*) ; 
 int MAX_INFO_STRING ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 scalar_t__ currentSet ; 
 TYPE_1__ levelMenuInfo ; 
 scalar_t__ selectedArenaSet ; 

__attribute__((used)) static void FUNC6( void ) {
	char	*p;
	char	*bot;
	char	*botInfo;
	char	bots[MAX_INFO_STRING];

	levelMenuInfo.numBots = 0;
	if ( selectedArenaSet > currentSet ) {
		return;
	}

	FUNC3( bots, FUNC0( levelMenuInfo.selectedArenaInfo, "bots" ), sizeof(bots) );

	p = &bots[0];
	while( *p && levelMenuInfo.numBots < 7 ) {
		//skip spaces
		while( *p && *p == ' ' ) {
			p++;
		}
		if( !*p ) {
			break;
		}

		// mark start of bot name
		bot = p;

		// skip until space of null
		while( *p && *p != ' ' ) {
			p++;
		}
		if( *p ) {
			*p++ = 0;
		}

		botInfo = FUNC4( bot );
		if(!botInfo)
		{
			botInfo = FUNC5( levelMenuInfo.numBots );
		}
	
		if( botInfo ) {
			levelMenuInfo.botPics[levelMenuInfo.numBots] = FUNC1( FUNC0( botInfo, "model" ) );
			FUNC3( levelMenuInfo.botNames[levelMenuInfo.numBots], FUNC0( botInfo, "name" ), 10 );
		}
		else {
			levelMenuInfo.botPics[levelMenuInfo.numBots] = 0;
			FUNC3( levelMenuInfo.botNames[levelMenuInfo.numBots], bot, 10 );
		}
		FUNC2( levelMenuInfo.botNames[levelMenuInfo.numBots] );
		levelMenuInfo.numBots++;
	}
}