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
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {int numClients; int* ranks; int /*<<< orphan*/ * scores; scalar_t__* clientNums; } ;

/* Variables and functions */
 scalar_t__ CS_PLAYERS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int RANK_TIED_FLAG ; 
 int SMALLCHAR_WIDTH ; 
 int /*<<< orphan*/  FUNC3 (int,int,char*,int,int /*<<< orphan*/ ) ; 
 int UI_LEFT ; 
 int UI_SMALLFONT ; 
 int /*<<< orphan*/  color_white ; 
 TYPE_1__ postgameMenuInfo ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 
 char* FUNC5 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6( int n, int y ) {
	int		rank;
	char	name[64];
	char	info[MAX_INFO_STRING];

	if( n > (postgameMenuInfo.numClients + 1) ) {
		n -= (postgameMenuInfo.numClients + 2);
	}

	if( n >= postgameMenuInfo.numClients ) {
		return;
	}

	rank = postgameMenuInfo.ranks[n];
	if( rank & RANK_TIED_FLAG ) {
		FUNC3( 640 - 31 * SMALLCHAR_WIDTH, y, "(tie)", UI_LEFT|UI_SMALLFONT, color_white );
		rank &= ~RANK_TIED_FLAG;
	}
	FUNC4( CS_PLAYERS + postgameMenuInfo.clientNums[n], info, MAX_INFO_STRING );
	FUNC2( name, FUNC0( info, "n" ), sizeof(name) );
	FUNC1( name );

	FUNC3( 640 - 25 * SMALLCHAR_WIDTH, y, FUNC5( "#%i: %-16s %2i", rank + 1, name, postgameMenuInfo.scores[n] ), UI_LEFT|UI_SMALLFONT, color_white );
}