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
typedef  scalar_t__ vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEEPMIND_LUA_MOVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,intptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(int entity_id, const vec3_t entityPosition,
                     const vec3_t playerPosition, const vec3_t playerVelocity,
                     vec3_t playerPositionDelta, vec3_t playerVelocityDelta) {
  FUNC0(DEEPMIND_LUA_MOVER, (intptr_t)entity_id,
                        (intptr_t)entityPosition,
                        (intptr_t)playerPosition, (intptr_t)playerVelocity,
                        (intptr_t)playerPositionDelta,
                        (intptr_t)playerVelocityDelta, 0, 0, 0, 0, 0, 0);
}