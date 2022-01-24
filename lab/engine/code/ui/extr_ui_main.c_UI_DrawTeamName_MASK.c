#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec4_t ;
struct TYPE_6__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ rectDef_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_7__ {int teamCount; TYPE_1__* teamList; } ;
struct TYPE_5__ {int /*<<< orphan*/  teamName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__ uiInfo ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(rectDef_t *rect, float scale, vec4_t color, qboolean blue, int textStyle) {
  int i;
  i = FUNC2(FUNC1((blue) ? "ui_blueTeam" : "ui_redTeam"));
  if (i >= 0 && i < uiInfo.teamCount) {
    FUNC0(rect->x, rect->y, scale, color, FUNC3("%s: %s", (blue) ? "Blue" : "Red", uiInfo.teamList[i].teamName),0, 0, textStyle);
  }
}