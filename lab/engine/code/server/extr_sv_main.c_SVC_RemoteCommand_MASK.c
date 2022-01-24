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
typedef  int /*<<< orphan*/  remaining ;
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  netadr_t ;
typedef  int /*<<< orphan*/  msg_t ;
typedef  int /*<<< orphan*/  leakyBucket_t ;
struct TYPE_4__ {int /*<<< orphan*/  string; } ;
struct TYPE_3__ {int /*<<< orphan*/  redirectAddress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  SV_FlushRedirect ; 
 int SV_OUTPUTBUF_LENGTH ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_2__* sv_rconPassword ; 
 TYPE_1__ svs ; 

__attribute__((used)) static void FUNC14( netadr_t from, msg_t *msg ) {
	qboolean	valid;
	char		remaining[1024];
	// TTimo - scaled down to accumulate, but not overflow anything network wise, print wise etc.
	// (OOB messages are the bottleneck here)
#define SV_OUTPUTBUF_LENGTH (1024 - 16)
	char		sv_outputbuf[SV_OUTPUTBUF_LENGTH];
	char *cmd_aux;

	// Prevent using rcon as an amplifier and make dictionary attacks impractical
	if ( FUNC11( from, 10, 1000 ) ) {
		FUNC5( "SVC_RemoteCommand: rate limit from %s exceeded, dropping request\n",
			FUNC8( from ) );
		return;
	}

	if ( !FUNC13( sv_rconPassword->string ) ||
		FUNC12 (FUNC1(1), sv_rconPassword->string) ) {
		static leakyBucket_t bucket;

		// Make DoS via rcon impractical
		if ( FUNC10( &bucket, 10, 1000 ) ) {
			FUNC5( "SVC_RemoteCommand: rate limit exceeded, dropping request\n" );
			return;
		}

		valid = qfalse;
		FUNC7 ("Bad rcon from %s: %s\n", FUNC8 (from), FUNC0(2) );
	} else {
		valid = qtrue;
		FUNC7 ("Rcon from %s: %s\n", FUNC8 (from), FUNC0(2) );
	}

	// start redirecting all print outputs to the packet
	svs.redirectAddress = from;
	FUNC4 (sv_outputbuf, SV_OUTPUTBUF_LENGTH, SV_FlushRedirect);

	if ( !FUNC13( sv_rconPassword->string ) ) {
		FUNC7 ("No rconpassword set on the server.\n");
	} else if ( !valid ) {
		FUNC7 ("Bad rconpassword.\n");
	} else {
		remaining[0] = 0;
		
		// https://zerowing.idsoftware.com/bugzilla/show_bug.cgi?id=543
		// get the command directly, "rcon <pass> <command>" to avoid quoting issues
		// extract the command by walking
		// since the cmd formatting can fuckup (amount of spaces), using a dumb step by step parsing
		cmd_aux = FUNC2();
		cmd_aux+=4;
		while(cmd_aux[0]==' ')
			cmd_aux++;
		while(cmd_aux[0] && cmd_aux[0]!=' ') // password
			cmd_aux++;
		while(cmd_aux[0]==' ')
			cmd_aux++;
		
		FUNC9( remaining, sizeof(remaining), cmd_aux);
		
		FUNC3 (remaining);

	}

	FUNC6 ();
}