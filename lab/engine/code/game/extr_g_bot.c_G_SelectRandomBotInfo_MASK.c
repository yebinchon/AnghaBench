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
 int FUNC0 (char*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int MAX_BOTS ; 
 int MAX_CLIENTS ; 
 int /*<<< orphan*/ * g_botInfos ; 
 int g_numBots ; 
 int FUNC2 () ; 

int FUNC3( int team ) {
	int		selection[MAX_BOTS];
	int		n, num;
	int		count, bestCount;
	char	*value;

	// don't add duplicate bots to the server if there are less bots than bot types
	if ( team != -1 && FUNC0( NULL, -1 ) < g_numBots ) {
		team = -1;
	}

	num = 0;
	bestCount = MAX_CLIENTS;
	for ( n = 0; n < g_numBots ; n++ ) {
		value = FUNC1( g_botInfos[n], "funname" );
		if ( !value[0] ) {
			value = FUNC1( g_botInfos[n], "name" );
		}
		//
		count = FUNC0( value, team );

		if ( count < bestCount ) {
			bestCount = count;
			num = 0;
		}

		if ( count == bestCount ) {
			selection[num++] = n;

			if ( num == MAX_BOTS ) {
				break;
			}
		}
	}

	if ( num > 0 ) {
		num = FUNC2() * ( num - 1 );
		return selection[num];
	}

	return -1;
}