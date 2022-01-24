#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  retrieved; scalar_t__ print; int /*<<< orphan*/  pending; int /*<<< orphan*/  address; int /*<<< orphan*/  time; int /*<<< orphan*/ * string; } ;
typedef  TYPE_1__ serverStatus_t ;
typedef  int /*<<< orphan*/  netadr_t ;
typedef  int /*<<< orphan*/  msg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*,...) ; 
 int MAX_INFO_STRING ; 
 int MAX_SERVERSTATUSREQUESTS ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* cl_serverStatusList ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int*,int*) ; 
 char* FUNC6 (char*,char) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8( netadr_t from, msg_t *msg ) {
	char	*s;
	char	info[MAX_INFO_STRING];
	int		i, l, score, ping;
	int		len;
	serverStatus_t *serverStatus;

	serverStatus = NULL;
	for (i = 0; i < MAX_SERVERSTATUSREQUESTS; i++) {
		if ( FUNC4( from, cl_serverStatusList[i].address ) ) {
			serverStatus = &cl_serverStatusList[i];
			break;
		}
	}
	// if we didn't request this server status
	if (!serverStatus) {
		return;
	}

	s = FUNC3( msg );

	len = 0;
	FUNC2(&serverStatus->string[len], sizeof(serverStatus->string)-len, "%s", s);

	if (serverStatus->print) {
		FUNC1("Server settings:\n");
		// print cvars
		while (*s) {
			for (i = 0; i < 2 && *s; i++) {
				if (*s == '\\')
					s++;
				l = 0;
				while (*s) {
					info[l++] = *s;
					if (l >= MAX_INFO_STRING-1)
						break;
					s++;
					if (*s == '\\') {
						break;
					}
				}
				info[l] = '\0';
				if (i) {
					FUNC1("%s\n", info);
				}
				else {
					FUNC1("%-24s", info);
				}
			}
		}
	}

	len = FUNC7(serverStatus->string);
	FUNC2(&serverStatus->string[len], sizeof(serverStatus->string)-len, "\\");

	if (serverStatus->print) {
		FUNC1("\nPlayers:\n");
		FUNC1("num: score: ping: name:\n");
	}
	for (i = 0, s = FUNC3( msg ); *s; s = FUNC3( msg ), i++) {

		len = FUNC7(serverStatus->string);
		FUNC2(&serverStatus->string[len], sizeof(serverStatus->string)-len, "\\%s", s);

		if (serverStatus->print) {
			score = ping = 0;
			FUNC5(s, "%d %d", &score, &ping);
			s = FUNC6(s, ' ');
			if (s)
				s = FUNC6(s+1, ' ');
			if (s)
				s++;
			else
				s = "unknown";
			FUNC1("%-2d   %-3d    %-3d   %s\n", i, score, ping, s );
		}
	}
	len = FUNC7(serverStatus->string);
	FUNC2(&serverStatus->string[len], sizeof(serverStatus->string)-len, "\\");

	serverStatus->time = FUNC0();
	serverStatus->address = from;
	serverStatus->pending = qfalse;
	if (serverStatus->print) {
		serverStatus->retrieved = qtrue;
	}
}