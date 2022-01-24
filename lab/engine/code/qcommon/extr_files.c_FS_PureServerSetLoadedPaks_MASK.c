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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int MAX_SEARCH_PATHS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fs_checksumFeed ; 
 int fs_numServerPaks ; 
 scalar_t__ fs_reordered ; 
 int /*<<< orphan*/ ** fs_serverPakNames ; 
 int /*<<< orphan*/ * fs_serverPaks ; 

void FUNC8( const char *pakSums, const char *pakNames ) {
	int		i, c, d;

	FUNC2( pakSums );

	c = FUNC0();
	if ( c > MAX_SEARCH_PATHS ) {
		c = MAX_SEARCH_PATHS;
	}

	fs_numServerPaks = c;

	for ( i = 0 ; i < c ; i++ ) {
		fs_serverPaks[i] = FUNC7( FUNC1( i ) );
	}

	if (fs_numServerPaks) {
		FUNC3( "Connected to a pure server.\n" );
	}
	else
	{
		if (fs_reordered)
		{
			// https://zerowing.idsoftware.com/bugzilla/show_bug.cgi?id=540
			// force a restart to make sure the search order will be correct
			FUNC3( "FS search reorder is required\n" );
			FUNC5(fs_checksumFeed);
			return;
		}
	}

	for ( i = 0 ; i < c ; i++ ) {
		if (fs_serverPakNames[i]) {
			FUNC6(fs_serverPakNames[i]);
		}
		fs_serverPakNames[i] = NULL;
	}
	if ( pakNames && *pakNames ) {
		FUNC2( pakNames );

		d = FUNC0();
		if ( d > MAX_SEARCH_PATHS ) {
			d = MAX_SEARCH_PATHS;
		}

		for ( i = 0 ; i < d ; i++ ) {
			fs_serverPakNames[i] = FUNC4( FUNC1( i ) );
		}
	}
}