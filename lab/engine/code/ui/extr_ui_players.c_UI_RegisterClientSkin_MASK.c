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
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_3__ {void* headSkin; void* torsoSkin; void* legsSkin; } ;
typedef  TYPE_1__ playerInfo_t ;
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*,char const*,...) ; 
 int MAX_QPATH ; 
 scalar_t__ FUNC1 (char*,int,char const*,char const*,char const*,char*,char*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 void* FUNC2 (char*) ; 

__attribute__((used)) static qboolean	FUNC3( playerInfo_t *pi, const char *modelName, const char *skinName, const char *headModelName, const char *headSkinName , const char *teamName) {
	char		filename[MAX_QPATH];

	if (teamName && *teamName) {
		FUNC0( filename, sizeof( filename ), "models/players/%s/%s/lower_%s.skin", modelName, teamName, skinName );
	} else {
		FUNC0( filename, sizeof( filename ), "models/players/%s/lower_%s.skin", modelName, skinName );
	}
	pi->legsSkin = FUNC2( filename );
	if (!pi->legsSkin) {
		if (teamName && *teamName) {
			FUNC0( filename, sizeof( filename ), "models/players/characters/%s/%s/lower_%s.skin", modelName, teamName, skinName );
		} else {
			FUNC0( filename, sizeof( filename ), "models/players/characters/%s/lower_%s.skin", modelName, skinName );
		}
		pi->legsSkin = FUNC2( filename );
	}

	if (teamName && *teamName) {
		FUNC0( filename, sizeof( filename ), "models/players/%s/%s/upper_%s.skin", modelName, teamName, skinName );
	} else {
		FUNC0( filename, sizeof( filename ), "models/players/%s/upper_%s.skin", modelName, skinName );
	}
	pi->torsoSkin = FUNC2( filename );
	if (!pi->torsoSkin) {
		if (teamName && *teamName) {
			FUNC0( filename, sizeof( filename ), "models/players/characters/%s/%s/upper_%s.skin", modelName, teamName, skinName );
		} else {
			FUNC0( filename, sizeof( filename ), "models/players/characters/%s/upper_%s.skin", modelName, skinName );
		}
		pi->torsoSkin = FUNC2( filename );
	}

	if ( FUNC1( filename, sizeof(filename), teamName, headModelName, headSkinName, "head", "skin" ) ) {
		pi->headSkin = FUNC2( filename );
	}

	if ( !pi->legsSkin || !pi->torsoSkin || !pi->headSkin ) {
		return qfalse;
	}

	return qtrue;
}