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
typedef  int /*<<< orphan*/ * vec4_t ;
struct TYPE_5__ {int w; scalar_t__ h; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ rectDef_t ;
typedef  scalar_t__ qhandle_t ;
typedef  int /*<<< orphan*/  num ;
struct TYPE_6__ {int /*<<< orphan*/  health; } ;
typedef  TYPE_2__ clientInfo_t ;
struct TYPE_7__ {TYPE_2__* clientinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,scalar_t__,scalar_t__) ; 
 size_t FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,float,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__ cgs ; 
 int* sortedTeamPlayers ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6( rectDef_t *rect, float scale, vec4_t color, qhandle_t shader, int textStyle ) {
	clientInfo_t *ci;
	int value;
	char num[16];

  ci = cgs.clientinfo + sortedTeamPlayers[FUNC1()];
  if (ci) {
		if (shader) {
			FUNC5( color );
			FUNC0(rect->x, rect->y, rect->w, rect->h, shader);
			FUNC5( NULL );
		} else {
			FUNC4 (num, sizeof(num), "%i", ci->health);
		  value = FUNC3(num, scale, 0);
		  FUNC2(rect->x + (rect->w - value) / 2, rect->y + rect->h, scale, color, num, 0, 0, textStyle);
		}
	}
}