#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  skinName ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_5__ {void* headModel; void* torsoModel; void* legsModel; } ;
typedef  TYPE_1__ playerInfo_t ;
typedef  int /*<<< orphan*/  modelName ;
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 char* FUNC5 (char*,char) ; 
 void* FUNC6 (char*) ; 

qboolean FUNC7( playerInfo_t *pi, const char *modelSkinName ) {
	char		modelName[MAX_QPATH];
	char		skinName[MAX_QPATH];
	char		filename[MAX_QPATH];
	char		*slash;

	pi->torsoModel = 0;
	pi->headModel = 0;

	if ( !modelSkinName[0] ) {
		return qfalse;
	}

	FUNC2( modelName, modelSkinName, sizeof( modelName ) );

	slash = FUNC5( modelName, '/' );
	if ( !slash ) {
		// modelName did not include a skin name
		FUNC2( skinName, "default", sizeof( skinName ) );
	} else {
		FUNC2( skinName, slash + 1, sizeof( skinName ) );
		// truncate modelName
		*slash = 0;
	}

	// load cmodels before models so filecache works

	FUNC1( filename, sizeof( filename ), "models/players/%s/lower.md3", modelName );
	pi->legsModel = FUNC6( filename );
	if ( !pi->legsModel ) {
		FUNC0( "Failed to load model file %s\n", filename );
		return qfalse;
	}

	FUNC1( filename, sizeof( filename ), "models/players/%s/upper.md3", modelName );
	pi->torsoModel = FUNC6( filename );
	if ( !pi->torsoModel ) {
		FUNC0( "Failed to load model file %s\n", filename );
		return qfalse;
	}

	FUNC1( filename, sizeof( filename ), "models/players/%s/head.md3", modelName );
	pi->headModel = FUNC6( filename );
	if ( !pi->headModel ) {
		FUNC0( "Failed to load model file %s\n", filename );
		return qfalse;
	}

	// if any skins failed to load, fall back to default
	if ( !FUNC4( pi, modelName, skinName ) ) {
		if ( !FUNC4( pi, modelName, "default" ) ) {
			FUNC0( "Failed to load skin file: %s : %s\n", modelName, skinName );
			return qfalse;
		}
	}

	// load the animations
	FUNC1( filename, sizeof( filename ), "models/players/%s/animation.cfg", modelName );
	if ( !FUNC3( filename, pi ) ) {
		FUNC0( "Failed to load animation file %s\n", filename );
		return qfalse;
	}

	return qtrue;
}