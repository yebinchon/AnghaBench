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
struct TYPE_2__ {char* shaderPath; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_1__* game ; 
 char* mapName ; 
 char* mapShaderFile ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  warnImage ; 

void FUNC6( const char *mapFile ){
	char base[ 1024 ];
	int len;


	/* dummy check */
	mapName[ 0 ] = '\0';
	mapShaderFile[ 0 ] = '\0';
	if ( mapFile == NULL || mapFile[ 0 ] == '\0' ) {
		return;
	}

	/* copy map name */
	FUNC4( base, mapFile );
	FUNC0( base );

	/* extract map name */
	len = FUNC5( base ) - 1;
	while ( len > 0 && base[ len ] != '/' && base[ len ] != '\\' )
		len--;
	FUNC4( mapName, &base[ len + 1 ] );
	base[ len ] = '\0';
	if ( len <= 0 ) {
		return;
	}

	/* append ../scripts/q3map2_<mapname>.shader */
	FUNC3( mapShaderFile, "%s/../%s/q3map2_%s.shader", base, game->shaderPath, mapName );
	FUNC1( SYS_VRB, "Map has shader script %s\n", mapShaderFile );

	/* remove it */
	FUNC2( mapShaderFile );

	/* stop making warnings about missing images */
	warnImage = qfalse;
}