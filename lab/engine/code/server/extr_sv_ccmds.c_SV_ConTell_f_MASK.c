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
typedef  int /*<<< orphan*/  client_t ;
struct TYPE_2__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int FUNC0 () ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 TYPE_1__* com_sv_running ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void) {
	char	*p;
	char	text[1024];
	client_t	*cl;

	// make sure server is running
	if ( !com_sv_running->integer ) {
		FUNC2( "Server is not running.\n" );
		return;
	}

	if ( FUNC0() < 3 ) {
		FUNC2 ("Usage: tell <client number> <text>\n");
		return;
	}

	cl = FUNC3();
	if ( !cl ) {
		return;
	}

	FUNC6 (text, "console_tell: ");
	p = FUNC1(2);

	if ( *p == '"' ) {
		p++;
		p[FUNC7(p)-1] = 0;
	}

	FUNC5(text, p);

	FUNC2("%s\n", text);
	FUNC4(cl, "chat \"%s\"", text);
}