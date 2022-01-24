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
struct TYPE_2__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int FUNC0 () ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 TYPE_1__* com_sv_running ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void) {
	char	*p;
	char	text[1024];

	// make sure server is running
	if ( !com_sv_running->integer ) {
		FUNC2( "Server is not running.\n" );
		return;
	}

	if ( FUNC0 () < 2 ) {
		return;
	}

	FUNC5 (text, "console: ");
	p = FUNC1();

	if ( *p == '"' ) {
		p++;
		p[FUNC6(p)-1] = 0;
	}

	FUNC4(text, p);

	FUNC2("%s\n", text);
	FUNC3(NULL, "chat \"%s\"", text);
}