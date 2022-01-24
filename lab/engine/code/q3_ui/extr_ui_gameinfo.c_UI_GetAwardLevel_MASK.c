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
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  awardData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int MAX_INFO_VALUE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

int FUNC4( int award ) {
	char	key[16];
	char	awardData[MAX_INFO_VALUE];

	FUNC3( "g_spAwards", awardData, sizeof(awardData) );

	FUNC0( key, sizeof(key), "a%i", award );
	return FUNC2( FUNC1( awardData, key ) );
}