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
struct TYPE_4__ {size_t id; } ;
typedef  TYPE_1__ menucommon_s ;
struct TYPE_6__ {int /*<<< orphan*/  anim; } ;
struct TYPE_5__ {int waitingforkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANIM_IDLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int QM_ACTIVATED ; 
 int QM_GOTFOCUS ; 
 int QM_LOSTFOCUS ; 
 TYPE_3__* g_bindings ; 
 TYPE_2__ s_controls ; 

__attribute__((used)) static void FUNC2( void* ptr, int event )
{
	if (event == QM_LOSTFOCUS)
	{
		FUNC1( ANIM_IDLE );
	}
	else if (event == QM_GOTFOCUS)
	{
		FUNC1( g_bindings[((menucommon_s*)ptr)->id].anim );
	}
	else if ((event == QM_ACTIVATED) && !s_controls.waitingforkey)
	{
		s_controls.waitingforkey = 1;
		FUNC0();
	}
}