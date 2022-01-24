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
struct TYPE_3__ {int map; int cubeSide; int /*<<< orphan*/  commandId; } ;
typedef  TYPE_1__ capShadowmapCommand_t ;

/* Variables and functions */
 int /*<<< orphan*/  RC_CAPSHADOWMAP ; 
 TYPE_1__* FUNC0 (int) ; 

void	FUNC1( int map, int cubeSide ) {
	capShadowmapCommand_t	*cmd;

	cmd = FUNC0( sizeof( *cmd ) );
	if ( !cmd ) {
		return;
	}
	cmd->commandId = RC_CAPSHADOWMAP;

	cmd->map = map;
	cmd->cubeSide = cubeSide;
}