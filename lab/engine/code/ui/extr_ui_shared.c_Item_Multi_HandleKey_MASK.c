#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_9__ {float* cvarValue; int /*<<< orphan*/ * cvarStr; scalar_t__ strDef; } ;
typedef  TYPE_2__ multiDef_t ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  rect; } ;
struct TYPE_10__ {scalar_t__ cvar; TYPE_1__ window; scalar_t__ typeData; } ;
typedef  TYPE_3__ itemDef_t ;
struct TYPE_11__ {int /*<<< orphan*/  (* setCVar ) (scalar_t__,int /*<<< orphan*/ ) ;int /*<<< orphan*/  cursory; int /*<<< orphan*/  cursorx; } ;

/* Variables and functions */
 TYPE_7__* DC ; 
 int FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int K_MOUSE1 ; 
 int K_MOUSE2 ; 
 int K_MOUSE3 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int WINDOW_HASFOCUS ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,float) ; 

qboolean FUNC8(itemDef_t *item, int key) {
	multiDef_t *multiPtr = (multiDef_t*)item->typeData;
	if (multiPtr) {
		if (item->cvar) {
			int select = 0;
			if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_MOUSE3) {
				if (FUNC2(&item->window.rect, DC->cursorx, DC->cursory) && item->window.flags & WINDOW_HASFOCUS) {
					select = (key == K_MOUSE2) ? -1 : 1;
				}
			} else {
				select = FUNC3(key);
			}
			if (select != 0) {
				int current = FUNC1(item) + select;
				int max = FUNC0(item);
				if ( current < 0 ) {
					current = max-1;
				} else if ( current >= max ) {
					current = 0;
				}
				if (multiPtr->strDef) {
					DC->setCVar(item->cvar, multiPtr->cvarStr[current]);
				} else {
					float value = multiPtr->cvarValue[current];
					if (((float)((int) value)) == value) {
						DC->setCVar(item->cvar, FUNC7("%i", (int) value ));
					}
					else {
						DC->setCVar(item->cvar, FUNC7("%f", value ));
					}
				}
				return qtrue;
			}
		}
	}
  return qfalse;
}