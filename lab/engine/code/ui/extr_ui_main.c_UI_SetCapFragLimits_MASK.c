#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_6__ {TYPE_1__* gameTypes; } ;
struct TYPE_5__ {size_t integer; } ;
struct TYPE_4__ {scalar_t__ gtEnum; } ;

/* Variables and functions */
 scalar_t__ GT_HARVESTER ; 
 scalar_t__ GT_OBELISK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_3__ uiInfo ; 
 TYPE_2__ ui_gameType ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2(qboolean uiVars) {
	int cap = 5;
	int frag = 10;
	if (uiInfo.gameTypes[ui_gameType.integer].gtEnum == GT_OBELISK) {
		cap = 4;
	} else if (uiInfo.gameTypes[ui_gameType.integer].gtEnum == GT_HARVESTER) {
		cap = 15;
	}
	if (uiVars) {
		FUNC0("ui_captureLimit", FUNC1("%d", cap));
		FUNC0("ui_fragLimit", FUNC1("%d", frag));
	} else {
		FUNC0("capturelimit", FUNC1("%d", cap));
		FUNC0("fraglimit", FUNC1("%d", frag));
	}
}