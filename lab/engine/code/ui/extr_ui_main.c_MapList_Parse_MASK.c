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
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_4__ {size_t mapCount; TYPE_1__* mapList; } ;
struct TYPE_3__ {int typeBits; int cinematic; int /*<<< orphan*/  mapLoadName; int /*<<< orphan*/  levelShot; int /*<<< orphan*/ * timeToBeat; int /*<<< orphan*/  opponentName; int /*<<< orphan*/  teamMembers; int /*<<< orphan*/  mapName; } ;

/* Variables and functions */
 char* FUNC0 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ *) ; 
 size_t MAX_MAPS ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__ uiInfo ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static qboolean FUNC7(char **p) {
	char *token;

	token = FUNC0(p, qtrue);

	if (token[0] != '{') {
		return qfalse;
	}

	uiInfo.mapCount = 0;

	while ( 1 ) {
		token = FUNC0(p, qtrue);

		if (FUNC3(token, "}") == 0) {
			return qtrue;
		}

		if (!token[0]) {
			return qfalse;
		}

		if (token[0] == '{') {
			if (!FUNC4(p, &uiInfo.mapList[uiInfo.mapCount].mapName) || !FUNC4(p, &uiInfo.mapList[uiInfo.mapCount].mapLoadName) 
				||!FUNC2(p, &uiInfo.mapList[uiInfo.mapCount].teamMembers) ) {
				return qfalse;
			}

			if (!FUNC4(p, &uiInfo.mapList[uiInfo.mapCount].opponentName)) {
				return qfalse;
			}

			uiInfo.mapList[uiInfo.mapCount].typeBits = 0;

			while (1) {
				token = FUNC0(p, qtrue);
				if (token[0] >= '0' && token[0] <= '9') {
					uiInfo.mapList[uiInfo.mapCount].typeBits |= (1 << (token[0] - 0x030));
					if (!FUNC2(p, &uiInfo.mapList[uiInfo.mapCount].timeToBeat[token[0] - 0x30])) {
						return qfalse;
					}
				} else {
					break;
				} 
			}

			//mapList[mapCount].imageName = String_Alloc(va("levelshots/%s", mapList[mapCount].mapLoadName));
			//if (uiInfo.mapCount == 0) {
			  // only load the first cinematic, selection loads the others
  			//  uiInfo.mapList[uiInfo.mapCount].cinematic = trap_CIN_PlayCinematic(va("%s.roq",uiInfo.mapList[uiInfo.mapCount].mapLoadName), qfalse, qfalse, qtrue, 0, 0, 0, 0);
			//}
  		uiInfo.mapList[uiInfo.mapCount].cinematic = -1;
			uiInfo.mapList[uiInfo.mapCount].levelShot = FUNC5(FUNC6("levelshots/%s_small", uiInfo.mapList[uiInfo.mapCount].mapLoadName));

			if (uiInfo.mapCount < MAX_MAPS) {
				uiInfo.mapCount++;
			} else {
				FUNC1("Too many maps, last one replaced!\n");
			}
		}
	}
	return qfalse;
}