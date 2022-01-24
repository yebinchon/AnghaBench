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
struct TYPE_2__ {scalar_t__ numSpawnVarChars; char* spawnVarChars; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ MAX_SPAWN_VARS_CHARS ; 
 TYPE_1__ level ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (char const*) ; 

char *FUNC3( const char *string ) {
	int		l;
	char	*dest;

	l = FUNC2( string );
	if ( level.numSpawnVarChars + l + 1 > MAX_SPAWN_VARS_CHARS ) {
		FUNC0( "G_AddSpawnVarToken: MAX_SPAWN_VARS_CHARS" );
	}

	dest = level.spawnVarChars + level.numSpawnVarChars;
	FUNC1( dest, string, l+1 );

	level.numSpawnVarChars += l + 1;

	return dest;
}