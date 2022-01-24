#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int level; int /*<<< orphan*/  lock; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ debug_info_t ;

/* Variables and functions */
 int DEBUG_MAX_LEVEL ; 
 int DEBUG_OFF_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(debug_info_t *id, int new_level)
{
	unsigned long flags;

	if (!id)
		return;
	FUNC1(&id->lock, flags);
	if (new_level == DEBUG_OFF_LEVEL) {
		id->level = DEBUG_OFF_LEVEL;
		FUNC0("%s: switched off\n", id->name);
	} else if ((new_level > DEBUG_MAX_LEVEL) || (new_level < 0)) {
		FUNC0("%s: level %i is out of range (%i - %i)\n",
			id->name, new_level, 0, DEBUG_MAX_LEVEL);
	} else {
		id->level = new_level;
	}
	FUNC2(&id->lock, flags);
}