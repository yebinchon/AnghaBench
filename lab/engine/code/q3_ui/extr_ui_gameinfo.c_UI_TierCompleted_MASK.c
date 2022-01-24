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

/* Variables and functions */
 int ARENAS_PER_TIER ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int*,int*) ; 
 int FUNC2 () ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5( int levelWon ) {
	int			level;
	int			n;
	int			tier;
	int			score;
	int			skill;
	const char	*info;

	tier = levelWon / ARENAS_PER_TIER;
	level = tier * ARENAS_PER_TIER;

	if( tier == FUNC2() ) {
		info = FUNC3( "training" );
		if( levelWon == FUNC4( FUNC0( info, "num" ) ) ) {
			return 0;
		}
		info = FUNC3( "final" );
		if( !info || levelWon == FUNC4( FUNC0( info, "num" ) ) ) {
			return tier + 1;
		}
		return -1;
	}

	for( n = 0; n < ARENAS_PER_TIER; n++, level++ ) {
		FUNC1( level, &score, &skill );
		if ( score != 1 ) {
			return -1;
		}
	}
	return tier + 1;
}