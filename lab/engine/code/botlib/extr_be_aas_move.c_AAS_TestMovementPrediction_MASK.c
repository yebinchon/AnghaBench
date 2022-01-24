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
struct TYPE_4__ {int stopevent; } ;
typedef  TYPE_1__ aas_clientmove_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int,int,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  PRESENCE_NORMAL ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 int /*<<< orphan*/  SE_HITGROUND ; 
 int SE_LEAVEGROUND ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int*) ; 
 TYPE_2__ botimport ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

void FUNC7(int entnum, vec3_t origin, vec3_t dir)
{
	vec3_t velocity, cmdmove;
	aas_clientmove_t move;

	FUNC3(velocity);
	if (!FUNC2(origin)) dir[2] = 0;
	FUNC4(dir);
	FUNC5(dir, 400, cmdmove);
	cmdmove[2] = 224;
	FUNC0();
	FUNC1(&move, entnum, origin, PRESENCE_NORMAL, qtrue,
									velocity, cmdmove, 13, 13, 0.1f, SE_HITGROUND, 0, qtrue);//SE_LEAVEGROUND);
	if (move.stopevent & SE_LEAVEGROUND)
	{
		botimport.Print(PRT_MESSAGE, "leave ground\n");
	} //end if
}