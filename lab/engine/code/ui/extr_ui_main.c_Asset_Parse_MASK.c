#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_9__ {int /*<<< orphan*/  string; } ;
typedef  TYPE_3__ pc_token_t ;
struct TYPE_7__ {char const* cursorStr; int fadeCycle; int /*<<< orphan*/ * shadowColor; int /*<<< orphan*/  shadowFadeClamp; int /*<<< orphan*/  shadowY; int /*<<< orphan*/  shadowX; int /*<<< orphan*/  fadeAmount; int /*<<< orphan*/  fadeClamp; void* cursor; void* menuBuzzSound; void* itemFocusSound; void* menuExitSound; void* menuEnterSound; void* gradientBar; int /*<<< orphan*/  bigFont; int /*<<< orphan*/  smallFont; int /*<<< orphan*/  fontRegistered; int /*<<< orphan*/  textFont; } ;
struct TYPE_8__ {TYPE_1__ Assets; } ;
struct TYPE_10__ {TYPE_2__ uiDC; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,char const**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int,int /*<<< orphan*/ *) ; 
 void* FUNC8 (char const*) ; 
 void* FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 TYPE_4__ uiInfo ; 

qboolean FUNC10(int handle) {
	pc_token_t token;
	const char *tempStr;

	if (!FUNC6(handle, &token))
		return qfalse;
	if (FUNC4(token.string, "{") != 0) {
		return qfalse;
	}
    
	while ( 1 ) {

		FUNC5(&token, 0, sizeof(pc_token_t));

		if (!FUNC6(handle, &token))
			return qfalse;

		if (FUNC4(token.string, "}") == 0) {
			return qtrue;
		}

		// font
		if (FUNC4(token.string, "font") == 0) {
			int pointSize;
			if (!FUNC3(handle, &tempStr) || !FUNC2(handle,&pointSize)) {
				return qfalse;
			}
			FUNC7(tempStr, pointSize, &uiInfo.uiDC.Assets.textFont);
			uiInfo.uiDC.Assets.fontRegistered = qtrue;
			continue;
		}

		if (FUNC4(token.string, "smallFont") == 0) {
			int pointSize;
			if (!FUNC3(handle, &tempStr) || !FUNC2(handle,&pointSize)) {
				return qfalse;
			}
			FUNC7(tempStr, pointSize, &uiInfo.uiDC.Assets.smallFont);
			continue;
		}

		if (FUNC4(token.string, "bigFont") == 0) {
			int pointSize;
			if (!FUNC3(handle, &tempStr) || !FUNC2(handle,&pointSize)) {
				return qfalse;
			}
			FUNC7(tempStr, pointSize, &uiInfo.uiDC.Assets.bigFont);
			continue;
		}


		// gradientbar
		if (FUNC4(token.string, "gradientbar") == 0) {
			if (!FUNC3(handle, &tempStr)) {
				return qfalse;
			}
			uiInfo.uiDC.Assets.gradientBar = FUNC8(tempStr);
			continue;
		}

		// enterMenuSound
		if (FUNC4(token.string, "menuEnterSound") == 0) {
			if (!FUNC3(handle, &tempStr)) {
				return qfalse;
			}
			uiInfo.uiDC.Assets.menuEnterSound = FUNC9( tempStr, qfalse );
			continue;
		}

		// exitMenuSound
		if (FUNC4(token.string, "menuExitSound") == 0) {
			if (!FUNC3(handle, &tempStr)) {
				return qfalse;
			}
			uiInfo.uiDC.Assets.menuExitSound = FUNC9( tempStr, qfalse );
			continue;
		}

		// itemFocusSound
		if (FUNC4(token.string, "itemFocusSound") == 0) {
			if (!FUNC3(handle, &tempStr)) {
				return qfalse;
			}
			uiInfo.uiDC.Assets.itemFocusSound = FUNC9( tempStr, qfalse );
			continue;
		}

		// menuBuzzSound
		if (FUNC4(token.string, "menuBuzzSound") == 0) {
			if (!FUNC3(handle, &tempStr)) {
				return qfalse;
			}
			uiInfo.uiDC.Assets.menuBuzzSound = FUNC9( tempStr, qfalse );
			continue;
		}

		if (FUNC4(token.string, "cursor") == 0) {
			if (!FUNC3(handle, &uiInfo.uiDC.Assets.cursorStr)) {
				return qfalse;
			}
			uiInfo.uiDC.Assets.cursor = FUNC8( uiInfo.uiDC.Assets.cursorStr);
			continue;
		}

		if (FUNC4(token.string, "fadeClamp") == 0) {
			if (!FUNC1(handle, &uiInfo.uiDC.Assets.fadeClamp)) {
				return qfalse;
			}
			continue;
		}

		if (FUNC4(token.string, "fadeCycle") == 0) {
			if (!FUNC2(handle, &uiInfo.uiDC.Assets.fadeCycle)) {
				return qfalse;
			}
			continue;
		}

		if (FUNC4(token.string, "fadeAmount") == 0) {
			if (!FUNC1(handle, &uiInfo.uiDC.Assets.fadeAmount)) {
				return qfalse;
			}
			continue;
		}

		if (FUNC4(token.string, "shadowX") == 0) {
			if (!FUNC1(handle, &uiInfo.uiDC.Assets.shadowX)) {
				return qfalse;
			}
			continue;
		}

		if (FUNC4(token.string, "shadowY") == 0) {
			if (!FUNC1(handle, &uiInfo.uiDC.Assets.shadowY)) {
				return qfalse;
			}
			continue;
		}

		if (FUNC4(token.string, "shadowColor") == 0) {
			if (!FUNC0(handle, &uiInfo.uiDC.Assets.shadowColor)) {
				return qfalse;
			}
			uiInfo.uiDC.Assets.shadowFadeClamp = uiInfo.uiDC.Assets.shadowColor[3];
			continue;
		}

	}
	return qfalse;
}