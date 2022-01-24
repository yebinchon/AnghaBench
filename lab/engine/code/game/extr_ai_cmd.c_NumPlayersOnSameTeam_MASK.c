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
typedef  int /*<<< orphan*/  bot_state_t ;
struct TYPE_2__ {int maxclients; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ CS_PLAYERS ; 
 int MAX_INFO_STRING ; 
 TYPE_1__ level ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int) ; 

int FUNC3(bot_state_t *bs) {
	int i, num;
	char buf[MAX_INFO_STRING];

	num = 0;
	for (i = 0; i < level.maxclients; i++) {
		FUNC2(CS_PLAYERS+i, buf, MAX_INFO_STRING);
		if (FUNC1(buf)) {
			if (FUNC0(bs, i+1)) num++;
		}
	}
	return num;
}