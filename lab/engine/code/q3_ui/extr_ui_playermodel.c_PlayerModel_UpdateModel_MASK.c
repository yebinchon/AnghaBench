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
typedef  int* vec3_t ;
typedef  int /*<<< orphan*/  playerInfo_t ;
struct TYPE_2__ {int /*<<< orphan*/  playerinfo; int /*<<< orphan*/  modelskin; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEGS_IDLE ; 
 size_t PITCH ; 
 size_t ROLL ; 
 int /*<<< orphan*/  TORSO_STAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  WP_MACHINEGUN ; 
 size_t YAW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 TYPE_1__ s_playermodel ; 

__attribute__((used)) static void FUNC4( void )
{
	vec3_t	viewangles;
	vec3_t	moveangles;

	FUNC3( &s_playermodel.playerinfo, 0, sizeof(playerInfo_t) );
	
	viewangles[YAW]   = 180 - 30;
	viewangles[PITCH] = 0;
	viewangles[ROLL]  = 0;
	FUNC2( moveangles );

	FUNC1( &s_playermodel.playerinfo, s_playermodel.modelskin );
	FUNC0( &s_playermodel.playerinfo, LEGS_IDLE, TORSO_STAND, viewangles, moveangles, WP_MACHINEGUN, qfalse );
}