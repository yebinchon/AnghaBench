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
typedef  int* vec3_t ;
struct TYPE_4__ {int facenum; int edgenum; } ;
typedef  TYPE_1__ aas_reachability_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,double,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ botimport ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC7(aas_reachability_t *reach, vec3_t start, vec3_t end, vec3_t origin)
{
	int spawnflags, modelnum;
	vec3_t mins, maxs, mid, angles = {0, 0, 0};
	int num0, num1;

	modelnum = reach->facenum & 0x0000FFFF;
	if (!FUNC1(modelnum, origin))
	{
		botimport.Print(PRT_MESSAGE, "BotFuncBobStartEnd: no entity with model %d\n", modelnum);
		FUNC5(start, 0, 0, 0);
		FUNC5(end, 0, 0, 0);
		return;
	} //end if
	FUNC0(modelnum, angles, mins, maxs, NULL);
	FUNC2(mins, maxs, mid);
	FUNC4(mid, 0.5, mid);
	FUNC3(mid, start);
	FUNC3(mid, end);
	spawnflags = reach->facenum >> 16;
	num0 = reach->edgenum >> 16;
	if (num0 > 0x00007FFF) num0 |= 0xFFFF0000;
	num1 = reach->edgenum & 0x0000FFFF;
	if (num1 > 0x00007FFF) num1 |= 0xFFFF0000;
	if (spawnflags & 1)
	{
		start[0] = num0;
		end[0] = num1;
		//
		origin[0] += mid[0];
		origin[1] = mid[1];
		origin[2] = mid[2];
	} //end if
	else if (spawnflags & 2)
	{
		start[1] = num0;
		end[1] = num1;
		//
		origin[0] = mid[0];
		origin[1] += mid[1];
		origin[2] = mid[2];
	} //end else if
	else
	{
		start[2] = num0;
		end[2] = num1;
		//
		origin[0] = mid[0];
		origin[1] = mid[1];
		origin[2] += mid[2];
	} //end else
}