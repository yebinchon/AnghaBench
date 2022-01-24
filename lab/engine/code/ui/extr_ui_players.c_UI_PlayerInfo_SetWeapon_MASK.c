#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int weapon_t ;
struct TYPE_5__ {int currentWeapon; int realWeapon; int /*<<< orphan*/  flashDlightColor; void* flashModel; void* barrelModel; void* weaponModel; } ;
typedef  TYPE_1__ playerInfo_t ;
typedef  int /*<<< orphan*/  path ;
struct TYPE_6__ {scalar_t__ giType; int giTag; char** world_model; scalar_t__ classname; } ;
typedef  TYPE_2__ gitem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 scalar_t__ IT_WEAPON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
#define  WP_BFG 137 
#define  WP_GAUNTLET 136 
#define  WP_GRAPPLING_HOOK 135 
#define  WP_GRENADE_LAUNCHER 134 
#define  WP_LIGHTNING 133 
#define  WP_MACHINEGUN 132 
 int WP_NONE ; 
#define  WP_PLASMAGUN 131 
#define  WP_RAILGUN 130 
#define  WP_ROCKET_LAUNCHER 129 
#define  WP_SHOTGUN 128 
 TYPE_2__* bg_itemlist ; 
 void* FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4( playerInfo_t *pi, weapon_t weaponNum ) {
	gitem_t *	item;
	char		path[MAX_QPATH];

	pi->currentWeapon = weaponNum;
tryagain:
	pi->realWeapon = weaponNum;
	pi->weaponModel = 0;
	pi->barrelModel = 0;
	pi->flashModel = 0;

	if ( weaponNum == WP_NONE ) {
		return;
	}

	for ( item = bg_itemlist + 1; item->classname ; item++ ) {
		if ( item->giType != IT_WEAPON ) {
			continue;
		}
		if ( item->giTag == weaponNum ) {
			break;
		}
	}

	if ( item->classname ) {
		pi->weaponModel = FUNC3( item->world_model[0] );
	}

	if( pi->weaponModel == 0 ) {
		if( weaponNum == WP_MACHINEGUN ) {
			weaponNum = WP_NONE;
			goto tryagain;
		}
		weaponNum = WP_MACHINEGUN;
		goto tryagain;
	}

	if ( weaponNum == WP_MACHINEGUN || weaponNum == WP_GAUNTLET || weaponNum == WP_BFG ) {
		FUNC0( item->world_model[0], path, sizeof(path) );
		FUNC2( path, sizeof(path), "_barrel.md3" );
		pi->barrelModel = FUNC3( path );
	}

	FUNC0( item->world_model[0], path, sizeof(path) );
	FUNC2( path, sizeof(path), "_flash.md3" );
	pi->flashModel = FUNC3( path );

	switch( weaponNum ) {
	case WP_GAUNTLET:
		FUNC1( pi->flashDlightColor, 0.6f, 0.6f, 1 );
		break;

	case WP_MACHINEGUN:
		FUNC1( pi->flashDlightColor, 1, 1, 0 );
		break;

	case WP_SHOTGUN:
		FUNC1( pi->flashDlightColor, 1, 1, 0 );
		break;

	case WP_GRENADE_LAUNCHER:
		FUNC1( pi->flashDlightColor, 1, 0.7f, 0.5f );
		break;

	case WP_ROCKET_LAUNCHER:
		FUNC1( pi->flashDlightColor, 1, 0.75f, 0 );
		break;

	case WP_LIGHTNING:
		FUNC1( pi->flashDlightColor, 0.6f, 0.6f, 1 );
		break;

	case WP_RAILGUN:
		FUNC1( pi->flashDlightColor, 1, 0.5f, 0 );
		break;

	case WP_PLASMAGUN:
		FUNC1( pi->flashDlightColor, 0.6f, 0.6f, 1 );
		break;

	case WP_BFG:
		FUNC1( pi->flashDlightColor, 1, 0.7f, 1 );
		break;

	case WP_GRAPPLING_HOOK:
		FUNC1( pi->flashDlightColor, 0.6f, 0.6f, 1 );
		break;

	default:
		FUNC1( pi->flashDlightColor, 1, 1, 1 );
		break;
	}
}