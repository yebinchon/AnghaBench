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
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int MAX_SEARCH_PATHS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int fs_numServerReferencedPaks ; 
 int /*<<< orphan*/ ** fs_serverReferencedPakNames ; 
 int /*<<< orphan*/ * fs_serverReferencedPaks ; 

void FUNC7( const char *pakSums, const char *pakNames ) {
	int		i, c, d = 0;

	FUNC3( pakSums );

	c = FUNC1();
	if ( c > MAX_SEARCH_PATHS ) {
		c = MAX_SEARCH_PATHS;
	}

	for ( i = 0 ; i < c ; i++ ) {
		fs_serverReferencedPaks[i] = FUNC6( FUNC2( i ) );
	}

	for (i = 0 ; i < FUNC0(fs_serverReferencedPakNames); i++)
	{
		if(fs_serverReferencedPakNames[i])
			FUNC5(fs_serverReferencedPakNames[i]);

		fs_serverReferencedPakNames[i] = NULL;
	}

	if ( pakNames && *pakNames ) {
		FUNC3( pakNames );

		d = FUNC1();

		if(d > c)
			d = c;

		for ( i = 0 ; i < d ; i++ ) {
			fs_serverReferencedPakNames[i] = FUNC4( FUNC2( i ) );
		}
	}

	// ensure that there are as many checksums as there are pak names.
	if(d < c)
		c = d;

	fs_numServerReferencedPaks = c;	
}