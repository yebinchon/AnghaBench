#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int forwardmove; int rightmove; int upmove; } ;
typedef  TYPE_2__ usercmd_t ;
struct TYPE_7__ {TYPE_1__* ps; } ;
struct TYPE_5__ {scalar_t__ speed; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 TYPE_3__* pm ; 
 float FUNC1 (int) ; 

__attribute__((used)) static float FUNC2( usercmd_t *cmd ) {
	int		max;
	float	total;
	float	scale;

	max = FUNC0( cmd->forwardmove );
	if ( FUNC0( cmd->rightmove ) > max ) {
		max = FUNC0( cmd->rightmove );
	}
	if ( FUNC0( cmd->upmove ) > max ) {
		max = FUNC0( cmd->upmove );
	}
	if ( !max ) {
		return 0;
	}

	total = FUNC1( cmd->forwardmove * cmd->forwardmove
		+ cmd->rightmove * cmd->rightmove + cmd->upmove * cmd->upmove );
	scale = (float)pm->ps->speed * max / ( 127.0 * total );

	return scale;
}