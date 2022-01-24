#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  arenaKey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int MAX_INFO_VALUE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int ui_numSinglePlayerArenas ; 
 int ui_numSpecialSinglePlayerArenas ; 

void FUNC7( void ) {
	char	arenaKey[16];
	char	scores[MAX_INFO_VALUE];
	int		level;
	int		tier;

	// get scores for skill 1
	FUNC5( "g_spScores1", scores, MAX_INFO_VALUE );

	// update scores
	for( level = 0; level < ui_numSinglePlayerArenas + ui_numSpecialSinglePlayerArenas; level++ ) {
		FUNC0( arenaKey, sizeof( arenaKey ), "l%i", level );
		FUNC1( scores, arenaKey, "1" );
	}
	FUNC4( "g_spScores1", scores );

	// unlock cinematics
	for( tier = 1; tier <= 8; tier++ ) {
		FUNC3( tier );
	}

	FUNC6( "All levels unlocked at skill level 1\n" );

	FUNC2();
}