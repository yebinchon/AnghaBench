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
struct TYPE_6__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ rectDef_t ;
typedef  int /*<<< orphan*/  playerInfo_t ;
typedef  int /*<<< orphan*/  model ;
typedef  int /*<<< orphan*/  headmodel ;
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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  WP_MACHINEGUN ; 
 size_t YAW ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ qfalse ; 
 TYPE_3__ uiInfo ; 
 scalar_t__ updateOpponentModel ; 
 int /*<<< orphan*/  vec3_origin ; 

__attribute__((used)) static void FUNC8(rectDef_t *rect) {
  static playerInfo_t info2;
  char model[MAX_QPATH];
  char headmodel[MAX_QPATH];
  char team[256];
	vec3_t	viewangles;
	vec3_t	moveangles;
  
	if (updateOpponentModel) {
		
		FUNC0(model, FUNC1("ui_opponentModel"), sizeof(model));
		FUNC0(headmodel, FUNC1("ui_opponentModel"), sizeof(headmodel));
		team[0] = '\0';

  	FUNC7( &info2, 0, sizeof(playerInfo_t) );
  	viewangles[YAW]   = 180 - 10;
  	viewangles[PITCH] = 0;
  	viewangles[ROLL]  = 0;
  	FUNC6( moveangles );
    FUNC4( &info2, model, headmodel, "");
    FUNC3( &info2, LEGS_IDLE, TORSO_STAND, viewangles, vec3_origin, WP_MACHINEGUN, qfalse );
		FUNC5( &info2, model, headmodel, team);
    updateOpponentModel = qfalse;
  }

  FUNC2( rect->x, rect->y, rect->w, rect->h, &info2, uiInfo.uiDC.realTime / 2);

}