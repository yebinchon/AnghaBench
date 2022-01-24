#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int itemCount; scalar_t__* soundName; int /*<<< orphan*/ * items; int /*<<< orphan*/  window; } ;
typedef  TYPE_1__ menuDef_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* registerSound ) (scalar_t__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_3__* DC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(menuDef_t *menu) {
	if (menu) {
		int i;
		FUNC1(&menu->window);
		for (i = 0; i < menu->itemCount; i++) {
			FUNC0(menu->items[i]);
		}

		if (menu->soundName && *menu->soundName) {
			DC->registerSound(menu->soundName, qfalse);
		}
	}

}