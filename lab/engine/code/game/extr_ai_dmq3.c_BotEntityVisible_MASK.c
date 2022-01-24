#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_5__ {int contents; int fraction; int ent; scalar_t__* endpos; } ;
typedef  TYPE_1__ bsp_trace_t ;
struct TYPE_6__ {scalar_t__* mins; scalar_t__* maxs; scalar_t__* origin; int /*<<< orphan*/  valid; } ;
typedef  TYPE_2__ aas_entityinfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_2__*) ; 
 int CONTENTS_FOG ; 
 int CONTENTS_LAVA ; 
 int CONTENTS_PLAYERCLIP ; 
 int CONTENTS_SLIME ; 
 int CONTENTS_SOLID ; 
 int CONTENTS_WATER ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,float,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*) ; 
 float FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,double,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int FUNC8 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,scalar_t__*) ; 

float FUNC10(int viewer, vec3_t eye, vec3_t viewangles, float fov, int ent) {
	int i, contents_mask, passent, hitent, infog, inwater, otherinfog, pc;
	float squaredfogdist, waterfactor, vis, bestvis;
	bsp_trace_t trace;
	aas_entityinfo_t entinfo;
	vec3_t dir, entangles, start, end, middle;

	FUNC1(ent, &entinfo);
	if (!entinfo.valid) {
		return 0;
	}

	//calculate middle of bounding box
	FUNC3(entinfo.mins, entinfo.maxs, middle);
	FUNC6(middle, 0.5, middle);
	FUNC3(entinfo.origin, middle, middle);
	//check if entity is within field of vision
	FUNC7(middle, eye, dir);
	FUNC9(dir, entangles);
	if (!FUNC2(viewangles, fov, entangles)) return 0;
	//
	pc = FUNC8(eye);
	infog = (pc & CONTENTS_FOG);
	inwater = (pc & (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER));
	//
	bestvis = 0;
	for (i = 0; i < 3; i++) {
		//if the point is not in potential visible sight
		//if (!AAS_inPVS(eye, middle)) continue;
		//
		contents_mask = CONTENTS_SOLID|CONTENTS_PLAYERCLIP;
		passent = viewer;
		hitent = ent;
		FUNC4(eye, start);
		FUNC4(middle, end);
		//if the entity is in water, lava or slime
		if (FUNC8(middle) & (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER)) {
			contents_mask |= (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER);
		}
		//if eye is in water, lava or slime
		if (inwater) {
			if (!(contents_mask & (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER))) {
				passent = ent;
				hitent = viewer;
				FUNC4(middle, start);
				FUNC4(eye, end);
			}
			contents_mask ^= (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER);
		}
		//trace from start to end
		FUNC0(&trace, start, NULL, NULL, end, passent, contents_mask);
		//if water was hit
		waterfactor = 1.0;
		//note: trace.contents is always 0, see BotAI_Trace
		if (trace.contents & (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER)) {
			//if the water surface is translucent
			if (1) {
				//trace through the water
				contents_mask &= ~(CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER);
				FUNC0(&trace, trace.endpos, NULL, NULL, end, passent, contents_mask);
				waterfactor = 0.5;
			}
		}
		//if a full trace or the hitent was hit
		if (trace.fraction >= 1 || trace.ent == hitent) {
			//check for fog, assuming there's only one fog brush where
			//either the viewer or the entity is in or both are in
			otherinfog = (FUNC8(middle) & CONTENTS_FOG);
			if (infog && otherinfog) {
				FUNC7(trace.endpos, eye, dir);
				squaredfogdist = FUNC5(dir);
			}
			else if (infog) {
				FUNC4(trace.endpos, start);
				FUNC0(&trace, start, NULL, NULL, eye, viewer, CONTENTS_FOG);
				FUNC7(eye, trace.endpos, dir);
				squaredfogdist = FUNC5(dir);
			}
			else if (otherinfog) {
				FUNC4(trace.endpos, end);
				FUNC0(&trace, eye, NULL, NULL, end, viewer, CONTENTS_FOG);
				FUNC7(end, trace.endpos, dir);
				squaredfogdist = FUNC5(dir);
			}
			else {
				//if the entity and the viewer are not in fog assume there's no fog in between
				squaredfogdist = 0;
			}
			//decrease visibility with the view distance through fog
			vis = 1 / ((squaredfogdist * 0.001) < 1 ? 1 : (squaredfogdist * 0.001));
			//if entering water visibility is reduced
			vis *= waterfactor;
			//
			if (vis > bestvis) bestvis = vis;
			//if pretty much no fog
			if (bestvis >= 0.95) return bestvis;
		}
		//check bottom and top of bounding box as well
		if (i == 0) middle[2] += entinfo.mins[2];
		else if (i == 1) middle[2] += entinfo.maxs[2] - entinfo.mins[2];
	}
	return bestvis;
}