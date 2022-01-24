#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ h; scalar_t__ w; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_3__ rectDef_t ;
typedef  int /*<<< orphan*/  menuDef_t ;
struct TYPE_10__ {float x; float y; float w; float h; } ;
struct TYPE_11__ {int flags; int offsetTime; TYPE_1__ rectEffects2; int /*<<< orphan*/  rectEffects; int /*<<< orphan*/  rectClient; } ;
struct TYPE_13__ {TYPE_2__ window; } ;
typedef  TYPE_4__ itemDef_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int WINDOW_INTRANSITION ; 
 int WINDOW_VISIBLE ; 
 float FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 

void FUNC5(menuDef_t *menu, const char *p, rectDef_t rectFrom, rectDef_t rectTo, int time, float amt) {
  itemDef_t *item;
  int i;
  int count = FUNC2(menu, p);
  for (i = 0; i < count; i++) {
    item = FUNC1(menu, i, p);
    if (item != NULL) {
      item->window.flags |= (WINDOW_INTRANSITION | WINDOW_VISIBLE);
      item->window.offsetTime = time;
			FUNC4(&item->window.rectClient, &rectFrom, sizeof(rectDef_t));
			FUNC4(&item->window.rectEffects, &rectTo, sizeof(rectDef_t));
			item->window.rectEffects2.x = FUNC3(rectTo.x - rectFrom.x) / amt;
			item->window.rectEffects2.y = FUNC3(rectTo.y - rectFrom.y) / amt;
			item->window.rectEffects2.w = FUNC3(rectTo.w - rectFrom.w) / amt;
			item->window.rectEffects2.h = FUNC3(rectTo.h - rectFrom.h) / amt;
      FUNC0(item);
    }
  }
}