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
struct TYPE_7__ {int tierCount; TYPE_1__* tierList; } ;
struct TYPE_5__ {int /*<<< orphan*/ * maps; } ;

/* Variables and functions */
 int MAPS_PER_TIER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 TYPE_3__ uiInfo ; 

__attribute__((used)) static void FUNC3(rectDef_t *rect, float scale, vec4_t color, int textStyle) {
  int i, j;
	i = FUNC2( "ui_currentTier" );
  if (i < 0 || i >= uiInfo.tierCount) {
    i = 0;
  }
	j = FUNC2("ui_currentMap");
	if (j < 0 || j >= MAPS_PER_TIER) {
		j = 0;
	}

  FUNC0(rect->x, rect->y, scale, color, FUNC1(uiInfo.tierList[i].maps[j]), 0, 0, textStyle);
}