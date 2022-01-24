#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  soundInterface_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* Shutdown ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ si ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4( void )
{
	if( si.Shutdown ) {
		si.Shutdown( );
	}

	FUNC1( &si, 0, sizeof( soundInterface_t ) );

	FUNC0( "play" );
	FUNC0( "music");
	FUNC0( "stopmusic");
	FUNC0( "s_list" );
	FUNC0( "s_stop" );
	FUNC0( "s_info" );

	FUNC2( );
}