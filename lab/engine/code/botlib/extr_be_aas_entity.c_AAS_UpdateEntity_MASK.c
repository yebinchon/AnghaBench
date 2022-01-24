#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_8__ {scalar_t__ solid; int /*<<< orphan*/  origin; int /*<<< orphan*/  angles; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; int /*<<< orphan*/  torsoAnim; int /*<<< orphan*/  legsAnim; int /*<<< orphan*/  weapon; int /*<<< orphan*/  powerups; int /*<<< orphan*/  eventParm; int /*<<< orphan*/  event; int /*<<< orphan*/  frame; int /*<<< orphan*/  modelindex2; int /*<<< orphan*/  modelindex; int /*<<< orphan*/  groundent; int /*<<< orphan*/  old_origin; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ bot_entitystate_t ;
struct TYPE_7__ {void* ltime; scalar_t__ solid; int number; int /*<<< orphan*/  origin; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; int /*<<< orphan*/  angles; int /*<<< orphan*/  modelindex; void* valid; int /*<<< orphan*/  torsoAnim; int /*<<< orphan*/  legsAnim; int /*<<< orphan*/  weapon; int /*<<< orphan*/  powerups; int /*<<< orphan*/  eventParm; int /*<<< orphan*/  event; int /*<<< orphan*/  frame; int /*<<< orphan*/  modelindex2; int /*<<< orphan*/  groundent; int /*<<< orphan*/  old_origin; int /*<<< orphan*/  lastvisorigin; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; void* update_time; } ;
struct TYPE_9__ {int /*<<< orphan*/ * leaves; int /*<<< orphan*/ * areas; TYPE_1__ i; } ;
typedef  TYPE_3__ aas_entity_t ;
struct TYPE_11__ {int numframes; TYPE_3__* entities; int /*<<< orphan*/  loaded; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int BLERR_NOAASFILE ; 
 int BLERR_NOERROR ; 
 int ENTITYNUM_WORLD ; 
 int /*<<< orphan*/  PRESENCE_NORMAL ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 scalar_t__ SOLID_BBOX ; 
 scalar_t__ SOLID_BSP ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__ aasworld ; 
 TYPE_4__ botimport ; 
 int qfalse ; 
 void* qtrue ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

int FUNC10(int entnum, bot_entitystate_t *state)
{
	int relink;
	aas_entity_t *ent;
	vec3_t absmins, absmaxs;

	if (!aasworld.loaded)
	{
		botimport.Print(PRT_MESSAGE, "AAS_UpdateEntity: not loaded\n");
		return BLERR_NOAASFILE;
	} //end if

	ent = &aasworld.entities[entnum];

	if (!state) {
		//unlink the entity
		FUNC4(ent->areas);
		//unlink the entity from the BSP leaves
		FUNC5(ent->leaves);
		//
		ent->areas = NULL;
		//
		ent->leaves = NULL;
		return BLERR_NOERROR;
	}

	ent->i.update_time = FUNC3() - ent->i.ltime;
	ent->i.type = state->type;
	ent->i.flags = state->flags;
	ent->i.ltime = FUNC3();
	FUNC8(ent->i.origin, ent->i.lastvisorigin);
	FUNC8(state->old_origin, ent->i.old_origin);
	ent->i.solid = state->solid;
	ent->i.groundent = state->groundent;
	ent->i.modelindex = state->modelindex;
	ent->i.modelindex2 = state->modelindex2;
	ent->i.frame = state->frame;
	ent->i.event = state->event;
	ent->i.eventParm = state->eventParm;
	ent->i.powerups = state->powerups;
	ent->i.weapon = state->weapon;
	ent->i.legsAnim = state->legsAnim;
	ent->i.torsoAnim = state->torsoAnim;
	//number of the entity
	ent->i.number = entnum;
	//updated so set valid flag
	ent->i.valid = qtrue;
	//link everything the first frame
	if (aasworld.numframes == 1) relink = qtrue;
	else relink = qfalse;
	//
	if (ent->i.solid == SOLID_BSP)
	{
		//if the angles of the model changed
		if (!FUNC7(state->angles, ent->i.angles))
		{
			FUNC8(state->angles, ent->i.angles);
			relink = qtrue;
		} //end if
		//get the mins and maxs of the model
		//FIXME: rotate mins and maxs
		FUNC1(ent->i.modelindex, ent->i.angles, ent->i.mins, ent->i.maxs, NULL);
	} //end if
	else if (ent->i.solid == SOLID_BBOX)
	{
		//if the bounding box size changed
		if (!FUNC7(state->mins, ent->i.mins) ||
				!FUNC7(state->maxs, ent->i.maxs))
		{
			FUNC8(state->mins, ent->i.mins);
			FUNC8(state->maxs, ent->i.maxs);
			relink = qtrue;
		} //end if
		FUNC8(state->angles, ent->i.angles);
	} //end if
	//if the origin changed
	if (!FUNC7(state->origin, ent->i.origin))
	{
		FUNC8(state->origin, ent->i.origin);
		relink = qtrue;
	} //end if
	//if the entity should be relinked
	if (relink)
	{
		//don't link the world model
		if (entnum != ENTITYNUM_WORLD)
		{
			//absolute mins and maxs
			FUNC6(ent->i.mins, ent->i.origin, absmins);
			FUNC6(ent->i.maxs, ent->i.origin, absmaxs);
			//unlink the entity
			FUNC4(ent->areas);
			//relink the entity to the AAS areas (use the larges bbox)
			ent->areas = FUNC2(absmins, absmaxs, entnum, PRESENCE_NORMAL);
			//unlink the entity from the BSP leaves
			FUNC5(ent->leaves);
			//link the entity to the world BSP tree
			ent->leaves = FUNC0(absmins, absmaxs, entnum, 0);
		} //end if
	} //end if
	return BLERR_NOERROR;
}