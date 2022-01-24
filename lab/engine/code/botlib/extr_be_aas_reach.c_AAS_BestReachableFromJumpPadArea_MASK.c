#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_8__ {int areanum; struct TYPE_8__* next_area; } ;
typedef  TYPE_1__ aas_link_t ;
struct TYPE_9__ {int frames; } ;
typedef  TYPE_2__ aas_clientmove_t ;
struct TYPE_10__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 float FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char*,char*) ; 
 int MAX_EPAIRKEY ; 
 int /*<<< orphan*/  PRESENCE_CROUCH ; 
 int /*<<< orphan*/  PRESENCE_NORMAL ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ botimport ; 
 int /*<<< orphan*/  qfalse ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

int FUNC14(vec3_t origin, vec3_t mins, vec3_t maxs)
{
	int ent, bot_visualizejumppads, bestareanum;
	float volume, bestareavolume;
	vec3_t areastart, cmdmove, bboxmins, bboxmaxs;
	vec3_t absmins, absmaxs, velocity;
	aas_clientmove_t move;
	aas_link_t *areas, *link;
	char classname[MAX_EPAIRKEY];

#ifdef BSPC
	bot_visualizejumppads = 0;
#else
	bot_visualizejumppads = FUNC9("bot_visualizejumppads", "0");
#endif
	FUNC10(origin, mins, bboxmins);
	FUNC10(origin, maxs, bboxmaxs);
	for (ent = FUNC5(0); ent; ent = FUNC5(ent))
	{
		if (!FUNC7(ent, "classname", classname, MAX_EPAIRKEY)) continue;
		if (FUNC12(classname, "trigger_push")) continue;
		//
		if (!FUNC3(ent, areastart, absmins, absmaxs, velocity)) continue;
		//get the areas the jump pad brush is in
		areas = FUNC4(absmins, absmaxs, -1, PRESENCE_CROUCH);
		for (link = areas; link; link = link->next_area)
		{
			if (FUNC0(link->areanum)) break;
		} //end for
		if (!link)
		{
			botimport.Print(PRT_MESSAGE, "trigger_push not in any jump pad area\n");
			FUNC6(areas);
			continue;
		} //end if
		//
		//botimport.Print(PRT_MESSAGE, "found a trigger_push with velocity %f %f %f\n", velocity[0], velocity[1], velocity[2]);
		//
		FUNC11(cmdmove, 0, 0, 0);
		FUNC8(&move, 0, sizeof(aas_clientmove_t));
		FUNC2(&move, -1, areastart, PRESENCE_NORMAL, qfalse,
								velocity, cmdmove, 0, 30, 0.1f, bboxmins, bboxmaxs, bot_visualizejumppads);
		if (move.frames < 30)
		{
			bestareanum = 0;
			bestareavolume = 0;
			for (link = areas; link; link = link->next_area)
			{
				if (!FUNC0(link->areanum)) continue;
				volume = FUNC1(link->areanum);
				if (volume >= bestareavolume)
				{
					bestareanum = link->areanum;
					bestareavolume = volume;
				} //end if
			} //end if
			FUNC6(areas);
			return bestareanum;
		} //end if
		FUNC6(areas);
	} //end for
	return 0;
}