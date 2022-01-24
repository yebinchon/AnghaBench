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
typedef  int /*<<< orphan*/  modName ;
typedef  int /*<<< orphan*/  message ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ DR_YES ; 
 int /*<<< orphan*/  DT_YES_NO ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int MAX_OSPATH ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC5 (char const*) ; 

void FUNC6( const char *gamedir ) {
	if( FUNC5( gamedir ) ) {
#ifndef DEDICATED
		char message[1024];
		char modName[MAX_OSPATH];

		FUNC2( gamedir, modName, sizeof ( modName ) );
		FUNC3( modName );

		FUNC0( message, sizeof (message), "The last time %s ran, "
			"it didn't exit properly. This may be due to inappropriate video "
			"settings. Would you like to start with \"safe\" video settings?", modName );

		if( FUNC4( DT_YES_NO, message, "Abnormal Exit" ) == DR_YES ) {
			FUNC1( "com_abnormalExit", "1" );
		}
#endif
	}
}