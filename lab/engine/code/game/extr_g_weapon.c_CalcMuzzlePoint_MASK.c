#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vec3_t ;
struct TYPE_7__ {int /*<<< orphan*/  trBase; } ;
struct TYPE_8__ {TYPE_1__ pos; } ;
struct TYPE_11__ {TYPE_4__* client; TYPE_2__ s; } ;
typedef  TYPE_5__ gentity_t ;
struct TYPE_9__ {scalar_t__ viewheight; } ;
struct TYPE_10__ {TYPE_3__ ps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3 ( gentity_t *ent, vec3_t forward, vec3_t right, vec3_t up, vec3_t muzzlePoint ) {
	FUNC1( ent->s.pos.trBase, muzzlePoint );
	muzzlePoint[2] += ent->client->ps.viewheight;
	FUNC2( muzzlePoint, 14, forward, muzzlePoint );
	// snap to integer coordinates for more efficient network bandwidth usage
	FUNC0( muzzlePoint );
}