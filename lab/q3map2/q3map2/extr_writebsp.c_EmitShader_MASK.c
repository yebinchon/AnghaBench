#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int surfaceFlags; int contentFlags; char* damageShader; int /*<<< orphan*/  shader; } ;
typedef  TYPE_1__ shaderInfo_t ;
struct TYPE_5__ {int surfaceFlags; int contentFlags; int /*<<< orphan*/  shader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_MAP_SHADERS ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_VRB ; 
 TYPE_1__* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* bspShaders ; 
 int numBSPShaders ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 

int FUNC5( const char *shader, int *contentFlags, int *surfaceFlags ){
	int i;
	shaderInfo_t    *si;


	/* handle special cases */
	if ( shader == NULL ) {
		shader = "noshader";
	}

	/* try to find an existing shader */
	for ( i = 0; i < numBSPShaders; i++ )
	{
		/* ydnar: handle custom surface/content flags */
		if ( surfaceFlags != NULL && bspShaders[ i ].surfaceFlags != *surfaceFlags ) {
			continue;
		}
		if ( contentFlags != NULL && bspShaders[ i ].contentFlags != *contentFlags ) {
			continue;
		}

		/* compare name */
		if ( !FUNC1( shader, bspShaders[ i ].shader ) ) {
			return i;
		}
	}

	/* get shaderinfo */
	si = FUNC2( shader );

	/* emit a new shader */
	if ( i == MAX_MAP_SHADERS ) {
		FUNC0( "MAX_MAP_SHADERS" );
	}
	numBSPShaders++;
	FUNC4( bspShaders[ i ].shader, shader );
	bspShaders[ i ].surfaceFlags = si->surfaceFlags;
	bspShaders[ i ].contentFlags = si->contentFlags;

	/* handle custom content/surface flags */
	if ( surfaceFlags != NULL ) {
		bspShaders[ i ].surfaceFlags = *surfaceFlags;
	}
	if ( contentFlags != NULL ) {
		bspShaders[ i ].contentFlags = *contentFlags;
	}

	/* recursively emit any damage shaders */
	if ( si->damageShader != NULL && si->damageShader[ 0 ] != '\0' ) {
		FUNC3( SYS_VRB, "Shader %s has damage shader %s\n", si->shader, si->damageShader );
		FUNC5( si->damageShader, NULL, NULL );
	}

	/* return it */
	return i;
}