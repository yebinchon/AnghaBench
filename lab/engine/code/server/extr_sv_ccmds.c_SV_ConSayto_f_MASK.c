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
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ client_t ;
typedef  int /*<<< orphan*/  cleanName ;
struct TYPE_9__ {int /*<<< orphan*/  integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {TYPE_1__* clients; } ;

/* Variables and functions */
 int FUNC0 () ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int MAX_NAME_LENGTH ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,char*) ; 
 TYPE_4__* com_sv_running ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 (char*) ; 
 TYPE_3__* sv_maxclients ; 
 TYPE_2__ svs ; 

__attribute__((used)) static void FUNC12(void) {
	char		*p;
	char		text[1024];
	client_t	*cl;
	char		*rawname;
	char		name[MAX_NAME_LENGTH];
	char		cleanName[MAX_NAME_LENGTH];
	client_t	*saytocl;
	int			i;

	// make sure server is running
	if ( !com_sv_running->integer ) {
		FUNC4( "Server is not running.\n" );
		return;
	}

	if ( FUNC0() < 3 ) {
		FUNC4 ("Usage: sayto <player name> <text>\n");
		return;
	}

	rawname = FUNC2(1);
	
	//allowing special characters in the console 
	//with hex strings for player names
	FUNC3( name, MAX_NAME_LENGTH, rawname );

	saytocl = NULL;
	for ( i=0, cl=svs.clients ; i < sv_maxclients->integer ; i++,cl++ ) {
		if ( !cl->state ) {
			continue;
		}
		FUNC7( cleanName, cl->name, sizeof(cleanName) );
		FUNC5( cleanName );

		if ( !FUNC6( cleanName, name ) ) {
			saytocl = cl;
			break;
		}
	}
	if( !saytocl )
	{
		FUNC4 ("No such player name: %s.\n", name);
		return;
	}

	FUNC10 (text, "console_sayto: ");
	p = FUNC1(2);

	if ( *p == '"' ) {
		p++;
		p[FUNC11(p)-1] = 0;
	}

	FUNC9(text, p);

	FUNC4("%s\n", text);
	FUNC8(saytocl, "chat \"%s\"", text);
}