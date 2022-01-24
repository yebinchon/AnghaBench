#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
typedef  int /*<<< orphan*/  model ;
struct TYPE_9__ {double fraction; int ent; } ;
typedef  TYPE_2__ bsp_trace_t ;
struct TYPE_10__ {scalar_t__* origin; int areanum; int /*<<< orphan*/  entitynum; int /*<<< orphan*/  eye; } ;
typedef  TYPE_3__ bot_state_t ;
struct TYPE_8__ {int entitynum; scalar_t__* origin; int areanum; scalar_t__* mins; scalar_t__* maxs; scalar_t__ flags; scalar_t__ number; } ;
struct TYPE_11__ {int shoot; scalar_t__* target; TYPE_1__ goal; } ;
typedef  TYPE_4__ bot_activategoal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  ET_MOVER ; 
 int /*<<< orphan*/  MASK_SHOT ; 
 int /*<<< orphan*/  PRESENCE_CROUCH ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,float,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,double,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int FUNC10 (char*) ; 
 float FUNC11 (scalar_t__) ; 
 int qfalse ; 
 int qtrue ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,float*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int FUNC15 (scalar_t__*,scalar_t__*,int*,scalar_t__**,int) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,char*,int) ; 

int FUNC17(bot_state_t *bs, int bspent, bot_activategoal_t *activategoal) {
	int i, areas[10], numareas, modelindex, entitynum;
	char model[128];
	float lip, dist, health, angle;
	vec3_t size, start, end, mins, maxs, angles, points[10];
	vec3_t movedir, origin, goalorigin, bboxmins, bboxmaxs;
	vec3_t extramins = {1, 1, 1}, extramaxs = {-1, -1, -1};
	bsp_trace_t bsptrace;

	activategoal->shoot = qfalse;
	FUNC4(activategoal->target);
	//create a bot goal towards the button
	FUNC16(bspent, "model", model, sizeof(model));
	if (!*model)
		return qfalse;
	modelindex = FUNC10(model+1);
	if (!modelindex)
		return qfalse;
	entitynum = FUNC1(modelindex, ET_MOVER, 0, mins, maxs);
	//get the lip of the button
	FUNC13(bspent, "lip", &lip);
	if (!lip) lip = 4;
	//get the move direction from the angle
	FUNC13(bspent, "angle", &angle);
	FUNC8(angles, 0, angle, 0);
	FUNC2(angles, movedir);
	//button size
	FUNC9(maxs, mins, size);
	//button origin
	FUNC3(mins, maxs, origin);
	FUNC7(origin, 0.5, origin);
	//touch distance of the button
	dist = FUNC11(movedir[0]) * size[0] + FUNC11(movedir[1]) * size[1] + FUNC11(movedir[2]) * size[2];
	dist *= 0.5;
	//
	FUNC13(bspent, "health", &health);
	//if the button is shootable
	if (health) {
		//calculate the shoot target
		FUNC6(origin, -dist, movedir, goalorigin);
		//
		FUNC5(goalorigin, activategoal->target);
		activategoal->shoot = qtrue;
		//
		FUNC0(&bsptrace, bs->eye, NULL, NULL, goalorigin, bs->entitynum, MASK_SHOT);
		// if the button is visible from the current position
		if (bsptrace.fraction >= 1.0 || bsptrace.ent == entitynum) {
			//
			activategoal->goal.entitynum = entitynum; //NOTE: this is the entity number of the shootable button
			activategoal->goal.number = 0;
			activategoal->goal.flags = 0;
			FUNC5(bs->origin, activategoal->goal.origin);
			activategoal->goal.areanum = bs->areanum;
			FUNC8(activategoal->goal.mins, -8, -8, -8);
			FUNC8(activategoal->goal.maxs, 8, 8, 8);
			//
			return qtrue;
		}
		else {
			//create a goal from where the button is visible and shoot at the button from there
			//add bounding box size to the dist
			FUNC14(PRESENCE_CROUCH, bboxmins, bboxmaxs);
			for (i = 0; i < 3; i++) {
				if (movedir[i] < 0) dist += FUNC11(movedir[i]) * FUNC11(bboxmaxs[i]);
				else dist += FUNC11(movedir[i]) * FUNC11(bboxmins[i]);
			}
			//calculate the goal origin
			FUNC6(origin, -dist, movedir, goalorigin);
			//
			FUNC5(goalorigin, start);
			start[2] += 24;
			FUNC5(start, end);
			end[2] -= 512;
			numareas = FUNC15(start, end, areas, points, 10);
			//
			for (i = numareas-1; i >= 0; i--) {
				if (FUNC12(areas[i])) {
					break;
				}
			}
			if (i < 0) {
				// FIXME: trace forward and maybe in other directions to find a valid area
			}
			if (i >= 0) {
				//
				FUNC5(points[i], activategoal->goal.origin);
				activategoal->goal.areanum = areas[i];
				FUNC8(activategoal->goal.mins, 8, 8, 8);
				FUNC8(activategoal->goal.maxs, -8, -8, -8);
				//
				for (i = 0; i < 3; i++)
				{
					if (movedir[i] < 0) activategoal->goal.maxs[i] += FUNC11(movedir[i]) * FUNC11(extramaxs[i]);
					else activategoal->goal.mins[i] += FUNC11(movedir[i]) * FUNC11(extramins[i]);
				} //end for
				//
				activategoal->goal.entitynum = entitynum;
				activategoal->goal.number = 0;
				activategoal->goal.flags = 0;
				return qtrue;
			}
		}
		return qfalse;
	}
	else {
		//add bounding box size to the dist
		FUNC14(PRESENCE_CROUCH, bboxmins, bboxmaxs);
		for (i = 0; i < 3; i++) {
			if (movedir[i] < 0) dist += FUNC11(movedir[i]) * FUNC11(bboxmaxs[i]);
			else dist += FUNC11(movedir[i]) * FUNC11(bboxmins[i]);
		}
		//calculate the goal origin
		FUNC6(origin, -dist, movedir, goalorigin);
		//
		FUNC5(goalorigin, start);
		start[2] += 24;
		FUNC5(start, end);
		end[2] -= 100;
		numareas = FUNC15(start, end, areas, NULL, 10);
		//
		for (i = 0; i < numareas; i++) {
			if (FUNC12(areas[i])) {
				break;
			}
		}
		if (i < numareas) {
			//
			FUNC5(origin, activategoal->goal.origin);
			activategoal->goal.areanum = areas[i];
			FUNC9(mins, origin, activategoal->goal.mins);
			FUNC9(maxs, origin, activategoal->goal.maxs);
			//
			for (i = 0; i < 3; i++)
			{
				if (movedir[i] < 0) activategoal->goal.maxs[i] += FUNC11(movedir[i]) * FUNC11(extramaxs[i]);
				else activategoal->goal.mins[i] += FUNC11(movedir[i]) * FUNC11(extramins[i]);
			} //end for
			//
			activategoal->goal.entitynum = entitynum;
			activategoal->goal.number = 0;
			activategoal->goal.flags = 0;
			return qtrue;
		}
	}
	return qfalse;
}