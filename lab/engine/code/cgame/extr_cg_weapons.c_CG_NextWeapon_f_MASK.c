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
struct TYPE_6__ {int weaponSelect; int /*<<< orphan*/  time; int /*<<< orphan*/  weaponSelectTime; TYPE_2__* snap; } ;
struct TYPE_4__ {int pm_flags; } ;
struct TYPE_5__ {TYPE_1__ ps; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int MAX_WEAPONS ; 
 int PMF_FOLLOW ; 
 int WP_GAUNTLET ; 
 TYPE_3__ cg ; 

void FUNC1( void ) {
	int		i;
	int		original;

	if ( !cg.snap ) {
		return;
	}
	if ( cg.snap->ps.pm_flags & PMF_FOLLOW ) {
		return;
	}

	cg.weaponSelectTime = cg.time;
	original = cg.weaponSelect;

	for ( i = 0 ; i < MAX_WEAPONS ; i++ ) {
		cg.weaponSelect++;
		if ( cg.weaponSelect == MAX_WEAPONS ) {
			cg.weaponSelect = 0;
		}
		if ( cg.weaponSelect == WP_GAUNTLET ) {
			continue;		// never cycle to gauntlet
		}
		if ( FUNC0( cg.weaponSelect ) ) {
			break;
		}
	}
	if ( i == MAX_WEAPONS ) {
		cg.weaponSelect = original;
	}
}