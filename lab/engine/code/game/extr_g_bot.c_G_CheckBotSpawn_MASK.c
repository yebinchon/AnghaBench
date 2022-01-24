#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  userinfo ;
struct TYPE_6__ {scalar_t__ spawnTime; int /*<<< orphan*/  clientNum; } ;
struct TYPE_5__ {scalar_t__ integer; } ;
struct TYPE_4__ {scalar_t__ time; } ;

/* Variables and functions */
 int BOT_SPAWN_QUEUE_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GT_SINGLE_PLAYER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int MAX_INFO_VALUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* botSpawnQueue ; 
 TYPE_2__ g_gametype ; 
 TYPE_1__ level ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC5( void ) {
	int		n;
	char	userinfo[MAX_INFO_VALUE];

	FUNC1();

	for( n = 0; n < BOT_SPAWN_QUEUE_DEPTH; n++ ) {
		if( !botSpawnQueue[n].spawnTime ) {
			continue;
		}
		if ( botSpawnQueue[n].spawnTime > level.time ) {
			continue;
		}
		FUNC0( botSpawnQueue[n].clientNum );
		botSpawnQueue[n].spawnTime = 0;

		if( g_gametype.integer == GT_SINGLE_PLAYER ) {
			FUNC4( botSpawnQueue[n].clientNum, userinfo, sizeof(userinfo) );
			FUNC3( FUNC2 (userinfo, "model") );
		}
	}
}