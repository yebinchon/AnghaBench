#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_11__ {int /*<<< orphan*/  velocity; int /*<<< orphan*/  origin; } ;
typedef  TYPE_4__ playerState_t ;
struct TYPE_8__ {int /*<<< orphan*/  origin; } ;
struct TYPE_12__ {void (* think ) (TYPE_5__*) ;scalar_t__ nextthink; TYPE_1__ s; int /*<<< orphan*/  id; TYPE_3__* activator; } ;
typedef  TYPE_5__ gentity_t ;
struct TYPE_13__ {scalar_t__ time; } ;
struct TYPE_10__ {TYPE_2__* client; } ;
struct TYPE_9__ {TYPE_4__ ps; } ;

/* Variables and functions */
 scalar_t__ FRAMETIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float,float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__ level ; 

void FUNC3( gentity_t *ent ) {
	vec3_t player_position_delta;
	vec3_t player_velocity_delta;
	playerState_t* ps = &(ent->activator->client->ps);

	FUNC1(player_position_delta, 0.0f, 0.0f, 0.0f);
	FUNC1(player_velocity_delta, 0.0f, 0.0f, 0.0f);

	FUNC2(ent->id, ent->s.origin, ps->origin, ps->velocity, player_position_delta, player_velocity_delta);

	FUNC0(ps->origin, player_position_delta, ps->origin);
	FUNC0(ps->velocity, player_velocity_delta, ps->velocity);

	ent->nextthink = level.time + FRAMETIME;
	ent->think = Think_LuaMover;
}