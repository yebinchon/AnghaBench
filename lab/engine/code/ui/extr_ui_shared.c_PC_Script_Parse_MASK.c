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
typedef  int /*<<< orphan*/  script ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_3__ {char* string; } ;
typedef  TYPE_1__ pc_token_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_1__*) ; 
 char* FUNC5 (char*,char*) ; 

qboolean FUNC6(int handle, const char **out) {
	char script[1024];
	pc_token_t token;

	FUNC3(script, 0, sizeof(script));
	// scripts start with { and have ; separated command lists.. commands are command, arg.. 
	// basically we want everything between the { } as it will be interpreted at run time
  
	if (!FUNC4(handle, &token))
		return qfalse;
	if (FUNC1(token.string, "{") != 0) {
	    return qfalse;
	}

	while ( 1 ) {
		if (!FUNC4(handle, &token))
			return qfalse;

		if (FUNC1(token.string, "}") == 0) {
			*out = FUNC2(script);
			return qtrue;
		}

		if (token.string[1] != '\0') {
			FUNC0(script, 1024, FUNC5("\"%s\"", token.string));
		} else {
			FUNC0(script, 1024, token.string);
		}
		FUNC0(script, 1024, " ");
	}
	return qfalse;
}