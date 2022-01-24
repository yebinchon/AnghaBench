#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  bot_state_t ;
struct TYPE_2__ {int maxclients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ CS_PLAYERS ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ level ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 

int FUNC5(bot_state_t *bs, char *name) {
	int i;
	char buf[MAX_INFO_STRING];

	for (i = 0; i < level.maxclients; i++) {
		if (!FUNC0(bs, i))
			continue;
		FUNC4(CS_PLAYERS+i, buf, sizeof(buf));
		FUNC2( buf );
		if (!FUNC3(FUNC1(buf, "n"), name)) return i;
	}
	return -1;
}