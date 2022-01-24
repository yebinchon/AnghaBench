#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_6__ {int fraction; int* endpos; int /*<<< orphan*/  startsolid; } ;
typedef  TYPE_2__ aas_trace_t ;
struct TYPE_7__ {int numareas; TYPE_1__* areas; } ;
struct TYPE_5__ {int* center; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int,int*,int,int) ; 
 int FUNC4 (int*) ; 
 TYPE_2__ FUNC5 (int*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  PRESENCE_CROUCH ; 
 int /*<<< orphan*/  FUNC7 (int*,int*) ; 
 TYPE_3__ aasworld ; 
 int qfalse ; 
 int qtrue ; 
 int FUNC8 () ; 

int FUNC9(int areanum, int travelflags, int *goalareanum, vec3_t goalorigin)
{
	int i, n, t;
	vec3_t start, end;
	aas_trace_t trace;

	//if the area has no reachabilities
	if (!FUNC1(areanum)) return qfalse;
	//
	n = aasworld.numareas * FUNC8();
	for (i = 0; i < aasworld.numareas; i++)
	{
		if (n <= 0) n = 1;
		if (n >= aasworld.numareas) n = 1;
		if (FUNC1(n))
		{
			t = FUNC3(areanum, aasworld.areas[areanum].center, n, travelflags);
			//if the goal is reachable
			if (t > 0)
			{
				if (FUNC2(n))
				{
					*goalareanum = n;
					FUNC7(aasworld.areas[n].center, goalorigin);
					//botimport.Print(PRT_MESSAGE, "found random goal area %d\n", *goalareanum);
					return qtrue;
				} //end if
				FUNC7(aasworld.areas[n].center, start);
				if (!FUNC4(start))
					FUNC6("area %d center %f %f %f in solid?", n, start[0], start[1], start[2]);
				FUNC7(start, end);
				end[2] -= 300;
				trace = FUNC5(start, end, PRESENCE_CROUCH, -1);
				if (!trace.startsolid && trace.fraction < 1 && FUNC4(trace.endpos) == n)
				{
					if (FUNC0(n) > 300)
					{
						*goalareanum = n;
						FUNC7(trace.endpos, goalorigin);
						//botimport.Print(PRT_MESSAGE, "found random goal area %d\n", *goalareanum);
						return qtrue;
					} //end if
				} //end if
			} //end if
		} //end if
		n++;
	} //end for
	return qfalse;
}