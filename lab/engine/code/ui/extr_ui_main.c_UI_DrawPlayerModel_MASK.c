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
typedef  int* vec3_t ;
typedef  int /*<<< orphan*/  team ;
struct TYPE_6__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ rectDef_t ;
typedef  int /*<<< orphan*/  playerInfo_t ;
typedef  int /*<<< orphan*/  model ;
typedef  int /*<<< orphan*/  head ;
struct TYPE_5__ {int realTime; } ;
struct TYPE_7__ {TYPE_1__ uiDC; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEGS_IDLE ; 
 int MAX_QPATH ; 
 size_t PITCH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 size_t ROLL ; 
 int /*<<< orphan*/  TORSO_STAND ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  WP_MACHINEGUN ; 
 size_t YAW ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* q3Model ; 
 void* qfalse ; 
 void* qtrue ; 
 scalar_t__ FUNC7 (char*) ; 
 TYPE_3__ uiInfo ; 
 void* updateModel ; 
 int /*<<< orphan*/  vec3_origin ; 

__attribute__((used)) static void FUNC8(rectDef_t *rect) {
  static playerInfo_t info;
  char model[MAX_QPATH];
  char team[256];
	char head[256];
	vec3_t	viewangles;
	vec3_t	moveangles;

	  if (FUNC7("ui_Q3Model")) {
		FUNC0(model, FUNC1("model"), sizeof(model));
		FUNC0(head, FUNC1("headmodel"), sizeof(head));
		if (!q3Model) {
			q3Model = qtrue;
			updateModel = qtrue;
		}
		team[0] = '\0';
	} else {

		FUNC0(team, FUNC1("ui_teamName"), sizeof(team));
		FUNC0(model, FUNC1("team_model"), sizeof(model));
		FUNC0(head, FUNC1("team_headmodel"), sizeof(head));
		if (q3Model) {
			q3Model = qfalse;
			updateModel = qtrue;
		}
	}
  if (updateModel) {
  	FUNC6( &info, 0, sizeof(playerInfo_t) );
  	viewangles[YAW]   = 180 - 10;
  	viewangles[PITCH] = 0;
  	viewangles[ROLL]  = 0;
  	FUNC5( moveangles );
    FUNC4( &info, model, head, team);
    FUNC3( &info, LEGS_IDLE, TORSO_STAND, viewangles, vec3_origin, WP_MACHINEGUN, qfalse );
//		UI_RegisterClientModelname( &info, model, head, team);
    updateModel = qfalse;
  }

  FUNC2( rect->x, rect->y, rect->w, rect->h, &info, uiInfo.uiDC.realTime / 2);

}