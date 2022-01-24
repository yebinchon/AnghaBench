#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int numDisplayServers; int numPlayersOnServers; scalar_t__ refreshActive; } ;
struct TYPE_4__ {TYPE_1__ serverStatus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ qfalse ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__ uiInfo ; 

__attribute__((used)) static void FUNC4( void )
{
	int count;

	if (!uiInfo.serverStatus.refreshActive) {
		// not currently refreshing
		return;
	}
	uiInfo.serverStatus.refreshActive = qfalse;
	FUNC0("%d servers listed in browser with %d players.\n",
					uiInfo.serverStatus.numDisplayServers,
					uiInfo.serverStatus.numPlayersOnServers);
	count = FUNC3(FUNC1());
	if (count - uiInfo.serverStatus.numDisplayServers > 0) {
		FUNC0("%d servers not listed due to packet loss or pings higher than %d\n",
						count - uiInfo.serverStatus.numDisplayServers,
						(int) FUNC2("cl_maxPing"));
	}

}