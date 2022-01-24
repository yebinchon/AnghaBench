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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  arg ;
struct TYPE_6__ {char* demoName; scalar_t__ state; char* servername; void* firstDemoFrameSkipped; void* compat; void* demoplaying; int /*<<< orphan*/  demofile; } ;
struct TYPE_5__ {int integer; } ;
struct TYPE_4__ {int integer; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 scalar_t__ CA_CONNECTED ; 
 scalar_t__ CA_PRIMED ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 char* DEMOEXT ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *,void*) ; 
 int MAX_OSPATH ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int FUNC14 (char*) ; 
 TYPE_3__ clc ; 
 TYPE_2__* com_legacyprotocol ; 
 TYPE_1__* com_protocol ; 
 int* demo_protocols ; 
 void* qfalse ; 
 void* qtrue ; 
 char* FUNC15 (char*,char) ; 

void FUNC16( void ) {
	char		name[MAX_OSPATH];
	char		arg[MAX_OSPATH];
	char		*ext_test;
	int			protocol, i;
	char		retry[MAX_OSPATH];

	if (FUNC4() != 2) {
		FUNC7 ("demo <demoname>\n");
		return;
	}

	// make sure a local server is killed
	// 2 means don't force disconnect of local client
	FUNC10( "sv_killserver", "2" );

	// open the demo file
	FUNC13( arg, FUNC5(1), sizeof( arg ) );
	
	FUNC1( qtrue );

	// check for an extension .DEMOEXT_?? (?? is protocol)
	ext_test = FUNC15(arg, '.');
	
	if(ext_test && !FUNC12(ext_test + 1, DEMOEXT, FUNC0(DEMOEXT) - 1))
	{
		protocol = FUNC14(ext_test + FUNC0(DEMOEXT));

		for(i = 0; demo_protocols[i]; i++)
		{
			if(demo_protocols[i] == protocol)
				break;
		}

		if(demo_protocols[i] || protocol == com_protocol->integer
#ifdef LEGACY_PROTOCOL
		   || protocol == com_legacyprotocol->integer
#endif
		  )
		{
			FUNC8(name, sizeof(name), "demos/%s", arg);
			FUNC11(name, &clc.demofile, qtrue);
		}
		else
		{
			int len;

			FUNC7("Protocol %d not supported for demos\n", protocol);
			len = ext_test - arg;

			if(len >= FUNC0(retry))
				len = FUNC0(retry) - 1;

			FUNC13(retry, arg, len + 1);
			retry[len] = '\0';
			protocol = FUNC3(retry, name, &clc.demofile);
		}
	}
	else
		protocol = FUNC3(arg, name, &clc.demofile);
	
	if (!clc.demofile) {
		FUNC6( ERR_DROP, "couldn't open %s", name);
		return;
	}
	FUNC13( clc.demoName, arg, sizeof( clc.demoName ) );

	FUNC9();

	clc.state = CA_CONNECTED;
	clc.demoplaying = qtrue;
	FUNC13( clc.servername, arg, sizeof( clc.servername ) );

#ifdef LEGACY_PROTOCOL
	if(protocol <= com_legacyprotocol->integer)
		clc.compat = qtrue;
	else
		clc.compat = qfalse;
#endif

	// read demo messages until connected
	while ( clc.state >= CA_CONNECTED && clc.state < CA_PRIMED ) {
		FUNC2();
	}
	// don't get the first snapshot this frame, to prevent the long
	// time from the gamestate load from messing causing a time skip
	clc.firstDemoFrameSkipped = qfalse;
}