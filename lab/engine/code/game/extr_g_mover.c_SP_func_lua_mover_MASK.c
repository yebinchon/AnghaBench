#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* use ) (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;scalar_t__ targetname; } ;
typedef  TYPE_1__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 

void FUNC1( gentity_t *ent ) {
	if (ent->targetname) {
		ent->use = Use_LuaMover;
	} else {
		FUNC0(ent, ent, ent);
	}
}