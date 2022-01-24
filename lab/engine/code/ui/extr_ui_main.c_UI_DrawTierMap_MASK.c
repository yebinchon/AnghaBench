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
struct TYPE_6__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ rectDef_t ;
struct TYPE_7__ {int tierCount; TYPE_1__* tierList; } ;
struct TYPE_5__ {int* mapHandles; int /*<<< orphan*/ * maps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__ uiInfo ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(rectDef_t *rect, int index) {
  int i;
	i = FUNC1( "ui_currentTier" );
  if (i < 0 || i >= uiInfo.tierCount) {
    i = 0;
  }

	if (uiInfo.tierList[i].mapHandles[index] == -1) {
		uiInfo.tierList[i].mapHandles[index] = FUNC2(FUNC3("levelshots/%s", uiInfo.tierList[i].maps[index]));
	}
												 
	FUNC0( rect->x, rect->y, rect->w, rect->h, uiInfo.tierList[i].mapHandles[index]);
}