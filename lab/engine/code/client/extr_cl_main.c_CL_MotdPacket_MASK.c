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
typedef  int /*<<< orphan*/  netadr_t ;
struct TYPE_2__ {int /*<<< orphan*/  updateInfoString; int /*<<< orphan*/  updateChallenge; int /*<<< orphan*/  updateServer; } ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__ cls ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 

void FUNC6( netadr_t from ) {
#ifdef UPDATE_SERVER_NAME
	char	*challenge;
	char	*info;

	// if not from our server, ignore it
	if ( !NET_CompareAdr( from, cls.updateServer ) ) {
		return;
	}

	info = Cmd_Argv(1);

	// check challenge
	challenge = Info_ValueForKey( info, "challenge" );
	if ( strcmp( challenge, cls.updateChallenge ) ) {
		return;
	}

	challenge = Info_ValueForKey( info, "motd" );

	Q_strncpyz( cls.updateInfoString, info, sizeof( cls.updateInfoString ) );
	Cvar_Set( "cl_motdString", challenge );
#endif
}