#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int retrieved; int pending; scalar_t__ startTime; int print; scalar_t__ time; int /*<<< orphan*/  address; int /*<<< orphan*/  string; } ;
typedef  TYPE_2__ serverStatus_t ;
typedef  int /*<<< orphan*/  netadr_t ;
struct TYPE_6__ {scalar_t__ port; } ;
struct TYPE_9__ {int retrieved; TYPE_1__ address; } ;
struct TYPE_8__ {scalar_t__ integer; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int MAX_SERVERSTATUSREQUESTS ; 
 int /*<<< orphan*/  NA_UNSPEC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_CLIENT ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* cl_serverStatusList ; 
 TYPE_3__* cl_serverStatusResendTime ; 
 int qfalse ; 
 int qtrue ; 

int FUNC6( char *serverAddress, char *serverStatusString, int maxLen ) {
	int i;
	netadr_t	to;
	serverStatus_t *serverStatus;

	// if no server address then reset all server status requests
	if ( !serverAddress ) {
		for (i = 0; i < MAX_SERVERSTATUSREQUESTS; i++) {
			cl_serverStatusList[i].address.port = 0;
			cl_serverStatusList[i].retrieved = qtrue;
		}
		return qfalse;
	}
	// get the address
	if ( !FUNC4( serverAddress, &to, NA_UNSPEC) ) {
		return qfalse;
	}
	serverStatus = FUNC0( to );
	// if no server status string then reset the server status request for this address
	if ( !serverStatusString ) {
		serverStatus->retrieved = qtrue;
		return qfalse;
	}

	// if this server status request has the same address
	if ( FUNC2( to, serverStatus->address) ) {
		// if we received a response for this server status request
		if (!serverStatus->pending) {
			FUNC5(serverStatusString, serverStatus->string, maxLen);
			serverStatus->retrieved = qtrue;
			serverStatus->startTime = 0;
			return qtrue;
		}
		// resend the request regularly
		else if ( serverStatus->startTime < FUNC1() - cl_serverStatusResendTime->integer ) {
			serverStatus->print = qfalse;
			serverStatus->pending = qtrue;
			serverStatus->retrieved = qfalse;
			serverStatus->time = 0;
			serverStatus->startTime = FUNC1();
			FUNC3( NS_CLIENT, to, "getstatus" );
			return qfalse;
		}
	}
	// if retrieved
	else if ( serverStatus->retrieved ) {
		serverStatus->address = to;
		serverStatus->print = qfalse;
		serverStatus->pending = qtrue;
		serverStatus->retrieved = qfalse;
		serverStatus->startTime = FUNC1();
		serverStatus->time = 0;
		FUNC3( NS_CLIENT, to, "getstatus" );
		return qfalse;
	}
	return qfalse;
}