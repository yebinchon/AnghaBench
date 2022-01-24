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
struct TYPE_2__ {int baseBotNum; int /*<<< orphan*/ * botnames; int /*<<< orphan*/ * sortedBotNums; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ addBotsMenuInfo ; 

__attribute__((used)) static void FUNC3( void ) {
	int			n;
	const char	*info;

	for ( n = 0; n < 7; n++ ) {
		info = FUNC2( addBotsMenuInfo.sortedBotNums[addBotsMenuInfo.baseBotNum + n] );
		FUNC1( addBotsMenuInfo.botnames[n], FUNC0( info, "name" ), sizeof(addBotsMenuInfo.botnames[n]) );
	}

}