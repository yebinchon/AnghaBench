#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t mapCount; TYPE_1__* mapList; } ;
struct TYPE_3__ {int cinematic; int levelShot; int typeBits; void* mapLoadName; void* imageName; void* mapName; } ;

/* Variables and functions */
 int GT_1FCTF ; 
 int GT_CTF ; 
 int GT_FFA ; 
 int GT_HARVESTER ; 
 int GT_OBELISK ; 
 int GT_TOURNAMENT ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 size_t MAX_MAPS ; 
 void* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 TYPE_2__ uiInfo ; 
 int /*<<< orphan*/ * ui_arenaInfos ; 
 int ui_numArenas ; 
 char* FUNC3 (char*,void*) ; 

void FUNC4( void ) {
	int			n;
	char		*type;

	uiInfo.mapCount = 0;

	for( n = 0; n < ui_numArenas; n++ ) {
		// determine type

		uiInfo.mapList[uiInfo.mapCount].cinematic = -1;
		uiInfo.mapList[uiInfo.mapCount].mapLoadName = FUNC1(FUNC0(ui_arenaInfos[n], "map"));
		uiInfo.mapList[uiInfo.mapCount].mapName = FUNC1(FUNC0(ui_arenaInfos[n], "longname"));
		uiInfo.mapList[uiInfo.mapCount].levelShot = -1;
		uiInfo.mapList[uiInfo.mapCount].imageName = FUNC1(FUNC3("levelshots/%s", uiInfo.mapList[uiInfo.mapCount].mapLoadName));
		uiInfo.mapList[uiInfo.mapCount].typeBits = 0;

		type = FUNC0( ui_arenaInfos[n], "type" );
		// if no type specified, it will be treated as "ffa"
		if( *type ) {
			if( FUNC2( type, "ffa" ) ) {
				uiInfo.mapList[uiInfo.mapCount].typeBits |= (1 << GT_FFA);
			}
			if( FUNC2( type, "tourney" ) ) {
				uiInfo.mapList[uiInfo.mapCount].typeBits |= (1 << GT_TOURNAMENT);
			}
			if( FUNC2( type, "ctf" ) ) {
				uiInfo.mapList[uiInfo.mapCount].typeBits |= (1 << GT_CTF);
			}
			if( FUNC2( type, "oneflag" ) ) {
				uiInfo.mapList[uiInfo.mapCount].typeBits |= (1 << GT_1FCTF);
			}
			if( FUNC2( type, "overload" ) ) {
				uiInfo.mapList[uiInfo.mapCount].typeBits |= (1 << GT_OBELISK);
			}
			if( FUNC2( type, "harvester" ) ) {
				uiInfo.mapList[uiInfo.mapCount].typeBits |= (1 << GT_HARVESTER);
			}
		} else {
			uiInfo.mapList[uiInfo.mapCount].typeBits |= (1 << GT_FFA);
		}

		uiInfo.mapCount++;
		if (uiInfo.mapCount >= MAX_MAPS) {
			break;
		}
	}
}