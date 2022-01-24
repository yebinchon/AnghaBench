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
typedef  scalar_t__ qboolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ oldScriptLine ; 
 scalar_t__ qfalse ; 
 scalar_t__ scriptline ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int tabDepth ; 
 char* token ; 

qboolean FUNC2( char *buffer, qboolean crossline ){
	qboolean r;
	int i;


	/* get the token */
	r = FUNC0( crossline );
	if ( r == qfalse || buffer == NULL || token[ 0 ] == '\0' ) {
		return r;
	}

	/* pre-tabstops */
	if ( token[ 0 ] == '}' ) {
		tabDepth--;
	}

	/* append? */
	if ( oldScriptLine != scriptline ) {
		FUNC1( buffer, "\n" );
		for ( i = 0; i < tabDepth; i++ )
			FUNC1( buffer, "\t" );
	}
	else{
		FUNC1( buffer, " " );
	}
	oldScriptLine = scriptline;
	FUNC1( buffer, token );

	/* post-tabstops */
	if ( token[ 0 ] == '{' ) {
		tabDepth++;
	}

	/* return */
	return r;
}