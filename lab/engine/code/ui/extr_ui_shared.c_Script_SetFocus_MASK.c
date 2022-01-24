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
struct TYPE_8__ {int flags; } ;
struct TYPE_10__ {scalar_t__ onFocus; TYPE_1__ window; int /*<<< orphan*/  parent; } ;
typedef  TYPE_3__ itemDef_t ;
struct TYPE_9__ {scalar_t__ itemFocusSound; } ;
struct TYPE_11__ {TYPE_2__ Assets; int /*<<< orphan*/  (* startLocalSound ) (scalar_t__,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CHAN_LOCAL_SOUND ; 
 TYPE_7__* DC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char**,char const**) ; 
 int WINDOW_DECORATION ; 
 int WINDOW_HASFOCUS ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC5(itemDef_t *item, char **args) {
  const char *name;
  itemDef_t *focusItem;

  if (FUNC3(args, &name)) {
    focusItem = FUNC2(item->parent, name);
    if (focusItem && !(focusItem->window.flags & WINDOW_DECORATION) && !(focusItem->window.flags & WINDOW_HASFOCUS)) {
      FUNC1(item->parent);
      focusItem->window.flags |= WINDOW_HASFOCUS;
      if (focusItem->onFocus) {
        FUNC0(focusItem, focusItem->onFocus);
      }
      if (DC->Assets.itemFocusSound) {
        DC->startLocalSound( DC->Assets.itemFocusSound, CHAN_LOCAL_SOUND );
      }
    }
  }
}