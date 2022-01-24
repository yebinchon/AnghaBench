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
typedef  int /*<<< orphan*/  personality ;
typedef  int /*<<< orphan*/  model ;
struct TYPE_2__ {scalar_t__ gametype; } ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ CS_PLAYERS ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char*) ; 
 char* DEFAULT_MODEL ; 
 scalar_t__ GT_SINGLE_PLAYER ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 size_t MAX_LOADING_PLAYER_ICONS ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ cgs ; 
 size_t loadingPlayerIconCount ; 
 scalar_t__* loadingPlayerIcons ; 
 int /*<<< orphan*/  qtrue ; 
 char* FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

void FUNC10( int clientNum ) {
	const char		*info;
	char			*skin;
	char			personality[MAX_QPATH];
	char			model[MAX_QPATH];
	char			iconName[MAX_QPATH];

	info = FUNC0( CS_PLAYERS + clientNum );

	if ( loadingPlayerIconCount < MAX_LOADING_PLAYER_ICONS ) {
		FUNC5( model, FUNC3( info, "model" ), sizeof( model ) );
		skin = FUNC6( model, '/' );
		if ( skin ) {
			*skin++ = '\0';
		} else {
			skin = "default";
		}

		FUNC2( iconName, MAX_QPATH, "models/players/%s/icon_%s.tga", model, skin );
		
		loadingPlayerIcons[loadingPlayerIconCount] = FUNC7( iconName );
		if ( !loadingPlayerIcons[loadingPlayerIconCount] ) {
			FUNC2( iconName, MAX_QPATH, "models/players/characters/%s/icon_%s.tga", model, skin );
			loadingPlayerIcons[loadingPlayerIconCount] = FUNC7( iconName );
		}
		if ( !loadingPlayerIcons[loadingPlayerIconCount] ) {
			FUNC2( iconName, MAX_QPATH, "models/players/%s/icon_%s.tga", DEFAULT_MODEL, "default" );
			loadingPlayerIcons[loadingPlayerIconCount] = FUNC7( iconName );
		}
		if ( loadingPlayerIcons[loadingPlayerIconCount] ) {
			loadingPlayerIconCount++;
		}
	}

	FUNC5( personality, FUNC3( info, "n" ), sizeof(personality) );
	FUNC4( personality );

	if( cgs.gametype == GT_SINGLE_PLAYER ) {
		FUNC8( FUNC9( "sound/player/announce/%s.wav", personality ), qtrue );
	}

	FUNC1( personality );
}