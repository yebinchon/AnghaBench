#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_21__ {int bind1; int bind2; int /*<<< orphan*/  command; int /*<<< orphan*/  label; } ;
typedef  TYPE_9__ bind_t ;
struct TYPE_20__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_19__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_18__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_17__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_16__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_15__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_14__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_13__ {scalar_t__ curvalue; } ;
struct TYPE_12__ {TYPE_8__ freelook; TYPE_7__ joythreshold; TYPE_6__ joyenable; TYPE_5__ sensitivity; TYPE_4__ autoswitch; TYPE_3__ alwaysrun; TYPE_2__ smoothmouse; TYPE_1__ invertmouse; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_APPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_9__* g_bindings ; 
 TYPE_10__ s_controls ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5( void )
{
	int		i;
	bind_t*	bindptr;

	// set the bindings from the local store
	bindptr = g_bindings;

	// iterate each command, get its numeric binding
	for (i=0; ;i++,bindptr++)
	{
		if (!bindptr->label)
			break;

		if (bindptr->bind1 != -1)
		{	
			FUNC4( bindptr->bind1, bindptr->command );

			if (bindptr->bind2 != -1)
				FUNC4( bindptr->bind2, bindptr->command );
		}
	}

	if ( s_controls.invertmouse.curvalue )
		FUNC2( "m_pitch", -FUNC0( FUNC3( "m_pitch" ) ) );
	else
		FUNC2( "m_pitch", FUNC0( FUNC3( "m_pitch" ) ) );

	FUNC2( "m_filter", s_controls.smoothmouse.curvalue );
	FUNC2( "cl_run", s_controls.alwaysrun.curvalue );
	FUNC2( "cg_autoswitch", s_controls.autoswitch.curvalue );
	FUNC2( "sensitivity", s_controls.sensitivity.curvalue );
	FUNC2( "in_joystick", s_controls.joyenable.curvalue );
	FUNC2( "joy_threshold", s_controls.joythreshold.curvalue );
	FUNC2( "cl_freelook", s_controls.freelook.curvalue );
	FUNC1( EXEC_APPEND, "in_restart\n" );
}