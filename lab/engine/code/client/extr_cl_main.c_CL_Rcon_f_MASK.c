#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ port; } ;
typedef  TYPE_2__ netadr_t ;
struct TYPE_9__ {TYPE_2__ remoteAddress; } ;
struct TYPE_14__ {scalar_t__ state; TYPE_1__ netchan; } ;
struct TYPE_13__ {TYPE_2__ rconAddress; } ;
struct TYPE_12__ {char* string; } ;
struct TYPE_11__ {char* string; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CA_CONNECTED ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int MAX_RCON_MESSAGE ; 
 int /*<<< orphan*/  NA_UNSPEC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,char*,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_CLIENT ; 
 int /*<<< orphan*/  PORT_SERVER ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*) ; 
 TYPE_6__ clc ; 
 TYPE_5__ cls ; 
 TYPE_4__* rconAddress ; 
 TYPE_3__* rcon_client_password ; 
 scalar_t__ FUNC6 (char*) ; 

void FUNC7( void ) {
	char	message[MAX_RCON_MESSAGE];
	netadr_t	to;

	if ( !rcon_client_password->string[0] ) {
		FUNC2 ("You must set 'rconpassword' before\n"
					"issuing an rcon command.\n");
		return;
	}

	message[0] = -1;
	message[1] = -1;
	message[2] = -1;
	message[3] = -1;
	message[4] = 0;

	FUNC5 (message, MAX_RCON_MESSAGE, "rcon ");

	FUNC5 (message, MAX_RCON_MESSAGE, rcon_client_password->string);
	FUNC5 (message, MAX_RCON_MESSAGE, " ");

	// https://zerowing.idsoftware.com/bugzilla/show_bug.cgi?id=543
	FUNC5 (message, MAX_RCON_MESSAGE, FUNC1()+5);

	if ( clc.state >= CA_CONNECTED ) {
		to = clc.netchan.remoteAddress;
	} else {
		if (!FUNC6(rconAddress->string)) {
			FUNC2 ("You must either be connected,\n"
						"or set the 'rconAddress' cvar\n"
						"to issue rcon commands\n");

			return;
		}
		FUNC4 (rconAddress->string, &to, NA_UNSPEC);
		if (to.port == 0) {
			to.port = FUNC0 (PORT_SERVER);
		}
	}
	
	FUNC3 (NS_CLIENT, FUNC6(message)+1, message, to);
	cls.rconAddress = to;
}