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
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_APPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC1( qboolean result ) {
	if( !result ) {
		return;
	}
	FUNC0( EXEC_APPEND, "exec default.cfg\n");
	FUNC0( EXEC_APPEND, "cvar_restart\n");
	FUNC0( EXEC_APPEND, "vid_restart\n" );
}