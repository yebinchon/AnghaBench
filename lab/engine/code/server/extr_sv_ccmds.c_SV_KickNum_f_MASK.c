#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_9__ {TYPE_1__ remoteAddress; } ;
struct TYPE_10__ {int /*<<< orphan*/  lastPacketTime; TYPE_2__ netchan; } ;
typedef  TYPE_3__ client_t ;
struct TYPE_12__ {int /*<<< orphan*/  integer; } ;
struct TYPE_11__ {int /*<<< orphan*/  time; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ NA_LOOPBACK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 TYPE_3__* FUNC4 () ; 
 TYPE_5__* com_sv_running ; 
 TYPE_4__ svs ; 

__attribute__((used)) static void FUNC5( void ) {
	client_t	*cl;

	// make sure server is running
	if ( !com_sv_running->integer ) {
		FUNC2( "Server is not running.\n" );
		return;
	}

	if ( FUNC0() != 2 ) {
		FUNC2 ("Usage: %s <client number>\n", FUNC1(0));
		return;
	}

	cl = FUNC4();
	if ( !cl ) {
		return;
	}
	if( cl->netchan.remoteAddress.type == NA_LOOPBACK ) {
		FUNC2("Cannot kick host player\n");
		return;
	}

	FUNC3( cl, "was kicked" );
	cl->lastPacketTime = svs.time;	// in case there is a funny zombie
}