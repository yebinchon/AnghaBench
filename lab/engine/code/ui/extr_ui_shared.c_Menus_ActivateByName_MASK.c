#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {TYPE_1__ window; } ;
typedef  TYPE_2__ menuDef_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ MAX_OPEN_MENUS ; 
 TYPE_2__* FUNC1 () ; 
 TYPE_2__* Menus ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  WINDOW_HASFOCUS ; 
 int menuCount ; 
 TYPE_2__** menuStack ; 
 scalar_t__ openMenuCount ; 

menuDef_t *FUNC4(const char *p) {
  int i;
  menuDef_t *m = NULL;
	menuDef_t *focus = FUNC1();
  for (i = 0; i < menuCount; i++) {
    if (FUNC3(Menus[i].window.name, p) == 0) {
	    m = &Menus[i];
			FUNC2(m);
			if (openMenuCount < MAX_OPEN_MENUS && focus != NULL) {
				menuStack[openMenuCount++] = focus;
			}
    } else {
      Menus[i].window.flags &= ~WINDOW_HASFOCUS;
    }
  }
	FUNC0();
  return m;
}