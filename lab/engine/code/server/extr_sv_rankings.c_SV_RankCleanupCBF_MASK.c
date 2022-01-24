#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ranked_player_t ;
typedef  scalar_t__ GR_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__*,void*) ; 
 scalar_t__ GR_STATUS_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5( GR_STATUS* status, void* cbf_arg )
{
	ranked_player_t*	ranked_player;
	ranked_player = (ranked_player_t*)cbf_arg;

	FUNC4( status != NULL );
	// NULL cbf_arg means server is cleaning up

	FUNC0( "SV_RankCleanupCBF( %08X, %08X );\n", status, cbf_arg );
	
	if( *status != GR_STATUS_OK )
	{
		FUNC2( "SV_RankCleanupCBF: Unexpected status %s",
			FUNC3( *status ) );
	}

	FUNC1( ranked_player );
}