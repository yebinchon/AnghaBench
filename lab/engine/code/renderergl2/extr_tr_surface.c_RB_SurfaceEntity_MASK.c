#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  surfaceType_t ;
struct TYPE_6__ {TYPE_2__* currentEntity; } ;
struct TYPE_4__ {int reType; } ;
struct TYPE_5__ {TYPE_1__ e; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
#define  RT_BEAM 132 
#define  RT_LIGHTNING 131 
#define  RT_RAIL_CORE 130 
#define  RT_RAIL_RINGS 129 
#define  RT_SPRITE 128 
 TYPE_3__ backEnd ; 

__attribute__((used)) static void FUNC6( surfaceType_t *surfType ) {
	switch( backEnd.currentEntity->e.reType ) {
	case RT_SPRITE:
		FUNC5();
		break;
	case RT_BEAM:
		FUNC1();
		break;
	case RT_RAIL_CORE:
		FUNC3();
		break;
	case RT_RAIL_RINGS:
		FUNC4();
		break;
	case RT_LIGHTNING:
		FUNC2();
		break;
	default:
		FUNC0();
		break;
	}
}