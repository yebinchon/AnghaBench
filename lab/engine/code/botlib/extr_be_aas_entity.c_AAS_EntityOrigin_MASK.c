#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_8__ {int maxentities; TYPE_2__* entities; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*,int) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  origin; } ;
struct TYPE_6__ {TYPE_1__ i; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRT_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ aasworld ; 
 TYPE_3__ botimport ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC3(int entnum, vec3_t origin)
{
	if (entnum < 0 || entnum >= aasworld.maxentities)
	{
		botimport.Print(PRT_FATAL, "AAS_EntityOrigin: entnum %d out of range\n", entnum);
		FUNC0(origin);
		return;
	} //end if

	FUNC1(aasworld.entities[entnum].i.origin, origin);
}