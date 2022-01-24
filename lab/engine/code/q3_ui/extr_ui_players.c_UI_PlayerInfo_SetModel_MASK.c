#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* weapon; int /*<<< orphan*/  newModel; int /*<<< orphan*/  chat; scalar_t__ weaponTimer; int /*<<< orphan*/  pendingWeapon; void* lastWeapon; void* currentWeapon; } ;
typedef  TYPE_1__ playerInfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 void* WP_NONE ; 
 int /*<<< orphan*/  WP_NUM_WEAPONS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC3( playerInfo_t *pi, const char *model ) {
	FUNC2( pi, 0, sizeof(*pi) );
	FUNC1( pi, model );
	pi->weapon = WP_NONE;
	pi->currentWeapon = WP_NONE;
	pi->lastWeapon = pi->weapon;
	pi->pendingWeapon = WP_NUM_WEAPONS;
	pi->weaponTimer = 0;
	pi->chat = qfalse;
	pi->newModel = qtrue;
	FUNC0( pi, pi->weapon );
}