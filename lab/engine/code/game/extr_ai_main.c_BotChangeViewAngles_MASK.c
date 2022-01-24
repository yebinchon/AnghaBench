#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* ideal_viewangles; scalar_t__ enemy; int* viewangles; float* viewanglespeed; int /*<<< orphan*/  client; int /*<<< orphan*/  character; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_5__ {scalar_t__ integer; } ;

/* Variables and functions */
 float FUNC0 (int,int) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int,int,float) ; 
 int /*<<< orphan*/  CHARACTERISTIC_VIEW_FACTOR ; 
 int /*<<< orphan*/  CHARACTERISTIC_VIEW_MAXCHANGE ; 
 size_t PITCH ; 
 TYPE_2__ bot_challenge ; 
 float FUNC3 (float) ; 
 float FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 

void FUNC6(bot_state_t *bs, float thinktime) {
	float diff, factor, maxchange, anglespeed, disired_speed;
	int i;

	if (bs->ideal_viewangles[PITCH] > 180) bs->ideal_viewangles[PITCH] -= 360;
	//
	if (bs->enemy >= 0) {
		factor = FUNC4(bs->character, CHARACTERISTIC_VIEW_FACTOR, 0.01f, 1);
		maxchange = FUNC4(bs->character, CHARACTERISTIC_VIEW_MAXCHANGE, 1, 1800);
	}
	else {
		factor = 0.05f;
		maxchange = 360;
	}
	if (maxchange < 240) maxchange = 240;
	maxchange *= thinktime;
	for (i = 0; i < 2; i++) {
		//
		if (bot_challenge.integer) {
			//smooth slowdown view model
			diff = FUNC3(FUNC0(bs->viewangles[i], bs->ideal_viewangles[i]));
			anglespeed = diff * factor;
			if (anglespeed > maxchange) anglespeed = maxchange;
			bs->viewangles[i] = FUNC2(bs->viewangles[i],
											bs->ideal_viewangles[i], anglespeed);
		}
		else {
			//over reaction view model
			bs->viewangles[i] = FUNC1(bs->viewangles[i]);
			bs->ideal_viewangles[i] = FUNC1(bs->ideal_viewangles[i]);
			diff = FUNC0(bs->viewangles[i], bs->ideal_viewangles[i]);
			disired_speed = diff * factor;
			bs->viewanglespeed[i] += (bs->viewanglespeed[i] - disired_speed);
			if (bs->viewanglespeed[i] > 180) bs->viewanglespeed[i] = maxchange;
			if (bs->viewanglespeed[i] < -180) bs->viewanglespeed[i] = -maxchange;
			anglespeed = bs->viewanglespeed[i];
			if (anglespeed > maxchange) anglespeed = maxchange;
			if (anglespeed < -maxchange) anglespeed = -maxchange;
			bs->viewangles[i] += anglespeed;
			bs->viewangles[i] = FUNC1(bs->viewangles[i]);
			//demping
			bs->viewanglespeed[i] *= 0.45 * (1 - factor);
		}
		//BotAI_Print(PRT_MESSAGE, "ideal_angles %f %f\n", bs->ideal_viewangles[0], bs->ideal_viewangles[1], bs->ideal_viewangles[2]);`
		//bs->viewangles[i] = bs->ideal_viewangles[i];
	}
	//bs->viewangles[PITCH] = 0;
	if (bs->viewangles[PITCH] > 180) bs->viewangles[PITCH] -= 360;
	//elementary action: view
	FUNC5(bs->client, bs->viewangles);
}