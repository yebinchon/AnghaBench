#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  double* vec4_t ;
struct TYPE_16__ {double* focusColor; int /*<<< orphan*/  disableColor; int /*<<< orphan*/  fadeAmount; int /*<<< orphan*/  fadeCycle; int /*<<< orphan*/  fadeClamp; } ;
typedef  TYPE_5__ menuDef_t ;
struct TYPE_12__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; scalar_t__ x; } ;
struct TYPE_14__ {int flags; double* foreColor; int /*<<< orphan*/  background; int /*<<< orphan*/  ownerDrawFlags; int /*<<< orphan*/  ownerDraw; TYPE_1__ rect; int /*<<< orphan*/  nextTime; } ;
struct TYPE_15__ {scalar_t__ w; scalar_t__ x; } ;
struct TYPE_17__ {scalar_t__ numColors; int cvarFlags; int /*<<< orphan*/  textStyle; TYPE_3__ window; int /*<<< orphan*/  textscale; int /*<<< orphan*/  special; int /*<<< orphan*/  alignment; int /*<<< orphan*/  textaligny; int /*<<< orphan*/  textalignx; TYPE_4__ textRect; scalar_t__* text; TYPE_2__* colorRanges; scalar_t__ parent; } ;
typedef  TYPE_6__ itemDef_t ;
typedef  int /*<<< orphan*/  color ;
struct TYPE_13__ {float low; float high; double* color; } ;
struct TYPE_11__ {float (* getValue ) (int /*<<< orphan*/ ) ;int realTime; int /*<<< orphan*/  (* ownerDrawItem ) (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int BLINK_DIVISOR ; 
 int CVAR_DISABLE ; 
 int CVAR_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (double*,int /*<<< orphan*/ ,int) ; 
 TYPE_10__* DC ; 
 int /*<<< orphan*/  FUNC1 (int*,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ITEM_TEXTSTYLE_BLINK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (double*,double*,double*,double) ; 
 int PULSE_DIVISOR ; 
 int WINDOW_HASFOCUS ; 
 int /*<<< orphan*/  FUNC5 (double**,double**,int) ; 
 int /*<<< orphan*/  qtrue ; 
 double FUNC6 (int) ; 
 float FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(itemDef_t *item) {
	if (item == NULL) {
		return;
	}

	if (DC->ownerDrawItem) {
		vec4_t color, lowLight;
		menuDef_t *parent = (menuDef_t*)item->parent;
		FUNC1(&item->window.flags, &item->window.foreColor[3], parent->fadeClamp, &item->window.nextTime, parent->fadeCycle, qtrue, parent->fadeAmount);
		FUNC5(&color, &item->window.foreColor, sizeof(color));
		if (item->numColors > 0 && DC->getValue) {
			// if the value is within one of the ranges then set color to that, otherwise leave at default
			int i;
			float f = DC->getValue(item->window.ownerDraw);
			for (i = 0; i < item->numColors; i++) {
				if (f >= item->colorRanges[i].low && f <= item->colorRanges[i].high) {
					FUNC5(&color, &item->colorRanges[i].color, sizeof(color));
					break;
				}
			}
		}

		if (item->window.flags & WINDOW_HASFOCUS) {
			lowLight[0] = 0.8 * parent->focusColor[0]; 
			lowLight[1] = 0.8 * parent->focusColor[1]; 
			lowLight[2] = 0.8 * parent->focusColor[2]; 
			lowLight[3] = 0.8 * parent->focusColor[3]; 
			FUNC4(parent->focusColor,lowLight,color,0.5+0.5*FUNC6(DC->realTime / PULSE_DIVISOR));
		} else if (item->textStyle == ITEM_TEXTSTYLE_BLINK && !((DC->realTime/BLINK_DIVISOR) & 1)) {
			lowLight[0] = 0.8 * item->window.foreColor[0]; 
			lowLight[1] = 0.8 * item->window.foreColor[1]; 
			lowLight[2] = 0.8 * item->window.foreColor[2]; 
			lowLight[3] = 0.8 * item->window.foreColor[3]; 
			FUNC4(item->window.foreColor,lowLight,color,0.5+0.5*FUNC6(DC->realTime / PULSE_DIVISOR));
		}

		if (item->cvarFlags & (CVAR_ENABLE | CVAR_DISABLE) && !FUNC2(item, CVAR_ENABLE)) {
		  FUNC0(color, parent->disableColor, sizeof(vec4_t));
		}
	
		if (item->text) {
			FUNC3(item);
				if (item->text[0]) {
					// +8 is an offset kludge to properly align owner draw items that have text combined with them
					DC->ownerDrawItem(item->textRect.x + item->textRect.w + 8, item->window.rect.y, item->window.rect.w, item->window.rect.h, 0, item->textaligny, item->window.ownerDraw, item->window.ownerDrawFlags, item->alignment, item->special, item->textscale, color, item->window.background, item->textStyle );
				} else {
					DC->ownerDrawItem(item->textRect.x + item->textRect.w, item->window.rect.y, item->window.rect.w, item->window.rect.h, 0, item->textaligny, item->window.ownerDraw, item->window.ownerDrawFlags, item->alignment, item->special, item->textscale, color, item->window.background, item->textStyle );
				}
			} else {
			DC->ownerDrawItem(item->window.rect.x, item->window.rect.y, item->window.rect.w, item->window.rect.h, item->textalignx, item->textaligny, item->window.ownerDraw, item->window.ownerDrawFlags, item->alignment, item->special, item->textscale, color, item->window.background, item->textStyle );
		}
	}
}