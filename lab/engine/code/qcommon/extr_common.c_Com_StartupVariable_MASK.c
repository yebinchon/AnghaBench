#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ CVAR_NONEXISTENT ; 
 int /*<<< orphan*/  CVAR_USER_CREATED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * com_consoleLines ; 
 int com_numConsoleLines ; 
 int /*<<< orphan*/  qfalse ; 
 scalar_t__ FUNC6 (char*,char const*) ; 

void FUNC7( const char *match ) {
	int		i;
	char	*s;

	for (i=0 ; i < com_numConsoleLines ; i++) {
		FUNC2( com_consoleLines[i] );
		if ( FUNC6( FUNC1(0), "set" ) ) {
			continue;
		}

		s = FUNC1(1);
		
		if(!match || !FUNC6(s, match))
		{
			if(FUNC3(s) == CVAR_NONEXISTENT)
				FUNC4(s, FUNC0(2), CVAR_USER_CREATED);
			else
				FUNC5(s, FUNC0(2), qfalse);
		}
	}
}