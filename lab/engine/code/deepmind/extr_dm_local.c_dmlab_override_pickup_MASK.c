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
typedef  int /*<<< orphan*/  playerState_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEEPMIND_OVERRIDE_PICKUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,intptr_t,intptr_t,intptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

qboolean FUNC1(int entity_id, int* respawn,
                               const playerState_t* ps) {
  return FUNC0(DEEPMIND_OVERRIDE_PICKUP, (intptr_t)entity_id,
                               (intptr_t)respawn, (intptr_t)ps, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}