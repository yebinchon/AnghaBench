#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec4_t ;
struct TYPE_12__ {float* focusColor; } ;
typedef  TYPE_3__ menuDef_t ;
struct TYPE_11__ {int /*<<< orphan*/  y; scalar_t__ x; scalar_t__ w; } ;
struct TYPE_10__ {int flags; int /*<<< orphan*/  foreColor; } ;
struct TYPE_13__ {int /*<<< orphan*/  textStyle; int /*<<< orphan*/  textscale; TYPE_2__ textRect; int /*<<< orphan*/  cvar; scalar_t__ text; TYPE_1__ window; scalar_t__ typeData; scalar_t__ parent; } ;
typedef  TYPE_4__ itemDef_t ;
struct TYPE_14__ {int maxPaintChars; } ;
typedef  TYPE_5__ editFieldDef_t ;
struct TYPE_15__ {int realTime; int /*<<< orphan*/  (* drawText ) (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_9__* DC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (float*,float*,float*,double) ; 
 int PULSE_DIVISOR ; 
 int WINDOW_HASFOCUS ; 
 TYPE_4__* g_bindItem ; 
 char* g_nameBind1 ; 
 int /*<<< orphan*/  FUNC3 (float**,int /*<<< orphan*/ *,int) ; 
 double FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC7(itemDef_t *item) {
	vec4_t newColor, lowLight;
	int maxChars = 0;
	menuDef_t *parent = (menuDef_t*)item->parent;
	editFieldDef_t *editPtr = (editFieldDef_t*)item->typeData;
	if (editPtr) {
		maxChars = editPtr->maxPaintChars;
	}

	if (item->window.flags & WINDOW_HASFOCUS) {
		if (g_bindItem == item) {
			lowLight[0] = 0.8f * 1.0f;
			lowLight[1] = 0.8f * 0.0f;
			lowLight[2] = 0.8f * 0.0f;
			lowLight[3] = 0.8f * 1.0f;
		} else {
			lowLight[0] = 0.8f * parent->focusColor[0]; 
			lowLight[1] = 0.8f * parent->focusColor[1]; 
			lowLight[2] = 0.8f * parent->focusColor[2]; 
			lowLight[3] = 0.8f * parent->focusColor[3]; 
		}
		FUNC2(parent->focusColor,lowLight,newColor,0.5+0.5*FUNC4(DC->realTime / PULSE_DIVISOR));
	} else {
		FUNC3(&newColor, &item->window.foreColor, sizeof(vec4_t));
	}

	if (item->text) {
		FUNC1(item);
		FUNC0(item->cvar);
		DC->drawText(item->textRect.x + item->textRect.w + 8, item->textRect.y, item->textscale, newColor, g_nameBind1, 0, maxChars, item->textStyle);
	} else {
		DC->drawText(item->textRect.x, item->textRect.y, item->textscale, newColor, "FIXME", 0, maxChars, item->textStyle);
	}
}