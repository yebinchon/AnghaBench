#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ warmupTime; } ;

/* Variables and functions */
#define  HI_MEDKIT 129 
#define  HI_TELEPORTER 128 
 int /*<<< orphan*/  QGR_KEY_MEDKIT_USE ; 
 int /*<<< orphan*/  QGR_KEY_TELEPORTER_USE ; 
 TYPE_1__ level ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int,int) ; 

void FUNC1( int self, int holdable )
{
	if( level.warmupTime != 0 )
	{
		// no reports during warmup period
		return;
	}
	
	switch( holdable )
	{
	case HI_MEDKIT:
		FUNC0( self, -1, QGR_KEY_MEDKIT_USE, 1, 1 );
		break;
	case HI_TELEPORTER:
		FUNC0( self, -1, QGR_KEY_TELEPORTER_USE, 1, 1 );
		break;
	default:
		break;
	}
}