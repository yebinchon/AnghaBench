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
struct TYPE_2__ {int baseBotNum; int numBots; int /*<<< orphan*/ * botnames; scalar_t__* botClientNums; } ;

/* Variables and functions */
 scalar_t__ CS_PLAYERS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ removeBotsMenuInfo ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int) ; 

__attribute__((used)) static void FUNC4( void ) {
	int		n;
	char	info[MAX_INFO_STRING];

	for ( n = 0; (n < 7) && (removeBotsMenuInfo.baseBotNum + n < removeBotsMenuInfo.numBots); n++ ) {
		FUNC3( CS_PLAYERS + removeBotsMenuInfo.botClientNums[removeBotsMenuInfo.baseBotNum + n], info, MAX_INFO_STRING );
		FUNC2( removeBotsMenuInfo.botnames[n], FUNC0( info, "n" ), sizeof(removeBotsMenuInfo.botnames[n]) );
		FUNC1( removeBotsMenuInfo.botnames[n] );
	}

}