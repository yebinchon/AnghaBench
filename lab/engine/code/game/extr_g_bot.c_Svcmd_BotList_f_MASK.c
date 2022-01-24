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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  model ;
typedef  int /*<<< orphan*/  funname ;
typedef  int /*<<< orphan*/  aifile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int MAX_TOKEN_CHARS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * g_botInfos ; 
 int g_numBots ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char*,char*,char*,char*) ; 

void FUNC5( void ) {
	int i;
	char name[MAX_TOKEN_CHARS];
	char funname[MAX_TOKEN_CHARS];
	char model[MAX_TOKEN_CHARS];
	char aifile[MAX_TOKEN_CHARS];

	FUNC3("^1name             model            aifile              funname\n");
	for (i = 0; i < g_numBots; i++) {
		FUNC1(name, FUNC0( g_botInfos[i], "name" ), sizeof( name ));
		if ( !*name ) {
			FUNC2(name, "UnnamedPlayer");
		}
		FUNC1(funname, FUNC0( g_botInfos[i], "funname" ), sizeof( funname ));
		if ( !*funname ) {
			FUNC2(funname, "");
		}
		FUNC1(model, FUNC0( g_botInfos[i], "model" ), sizeof( model ));
		if ( !*model ) {
			FUNC2(model, "visor/default");
		}
		FUNC1(aifile, FUNC0( g_botInfos[i], "aifile"), sizeof( aifile ));
		if (!*aifile ) {
			FUNC2(aifile, "bots/default_c.c");
		}
		FUNC3(FUNC4("%-16s %-16s %-20s %-20s\n", name, model, aifile, funname));
	}
}