#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int respawn_wait; double respawn_time; double respawnchat_time; int enemy; int /*<<< orphan*/  client; int /*<<< orphan*/  chatto; int /*<<< orphan*/  cs; } ;
typedef  TYPE_1__ bot_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 double FUNC2 () ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(bot_state_t *bs) {
	// if waiting for the actual respawn
	if (bs->respawn_wait) {
		if (!FUNC1(bs)) {
			FUNC0(bs, "respawn: respawned");
		}
		else {
			FUNC4(bs->client);
		}
	}
	else if (bs->respawn_time < FUNC2()) {
		// wait until respawned
		bs->respawn_wait = qtrue;
		// elementary action respawn
		FUNC4(bs->client);
		//
		if (bs->respawnchat_time) {
			FUNC3(bs->cs, 0, bs->chatto);
			bs->enemy = -1;
		}
	}
	if (bs->respawnchat_time && bs->respawnchat_time < FUNC2() - 0.5) {
		FUNC5(bs->client);
	}
	//
	return qtrue;
}