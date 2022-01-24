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
 int /*<<< orphan*/  CVAR_ARCHIVE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,char*,int) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__* cl_cdkey ; 
 int /*<<< orphan*/  cvar_modifiedFlags ; 

__attribute__((used)) static void FUNC3( char *buf ) {
	const char *gamedir;
	gamedir = FUNC1( "fs_game" );
	if (FUNC2() && gamedir[0] != 0) {
		FUNC0( &cl_cdkey[16], buf, 16 );
		cl_cdkey[32] = 0;
		// set the flag so the fle will be written at the next opportunity
		cvar_modifiedFlags |= CVAR_ARCHIVE;
	} else {
		FUNC0( cl_cdkey, buf, 16 );
		// set the flag so the fle will be written at the next opportunity
		cvar_modifiedFlags |= CVAR_ARCHIVE;
	}
}