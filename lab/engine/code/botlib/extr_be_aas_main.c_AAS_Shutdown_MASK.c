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
typedef  int /*<<< orphan*/  aas_t ;
struct TYPE_5__ {int /*<<< orphan*/  initialized; scalar_t__ entities; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 TYPE_2__ aasworld ; 
 TYPE_1__ botimport ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

void FUNC9(void)
{
	FUNC5();
	//
	FUNC1();
	//free routing caches
	FUNC4();
	//free aas link heap
	FUNC2();
	//free aas linked entities
	FUNC3();
	//free the aas data
	FUNC0();
	//free the entities
	if (aasworld.entities) FUNC7(aasworld.entities);
	//clear the aasworld structure
	FUNC6(&aasworld, 0, sizeof(aas_t));
	//aas has not been initialized
	aasworld.initialized = qfalse;
	//NOTE: as soon as a new .bsp file is loaded the .bsp file memory is
	// freed and reallocated, so there's no need to free that memory here
	//print shutdown
	botimport.Print(PRT_MESSAGE, "AAS shutdown.\n");
}