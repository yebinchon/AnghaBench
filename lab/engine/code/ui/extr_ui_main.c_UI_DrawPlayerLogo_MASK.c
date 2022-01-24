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
typedef  int /*<<< orphan*/ * vec3_t ;
struct TYPE_6__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ rectDef_t ;
struct TYPE_7__ {TYPE_1__* teamList; } ;
struct TYPE_5__ {int teamIcon; int /*<<< orphan*/  imageName; void* teamIcon_Name; void* teamIcon_Metal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__ uiInfo ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void	FUNC6(rectDef_t *rect, vec3_t color) {
  int i = FUNC2(FUNC0("ui_teamName"));

	if (uiInfo.teamList[i].teamIcon == -1) {
    uiInfo.teamList[i].teamIcon = FUNC3(uiInfo.teamList[i].imageName);
    uiInfo.teamList[i].teamIcon_Metal = FUNC3(FUNC5("%s_metal",uiInfo.teamList[i].imageName));
    uiInfo.teamList[i].teamIcon_Name = FUNC3(FUNC5("%s_name", uiInfo.teamList[i].imageName));
	}

 	FUNC4( color );
	FUNC1( rect->x, rect->y, rect->w, rect->h, uiInfo.teamList[i].teamIcon );
 	FUNC4( NULL );
}