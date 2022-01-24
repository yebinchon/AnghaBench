#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_5__ {int /*<<< orphan*/ * extents; } ;
typedef  TYPE_1__ aabb_t ;

/* Variables and functions */
 int /*<<< orphan*/  FLT_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC2( aabb_t *aabb, vec3_t area_tl, vec3_t area_br, int axis ){
	FUNC0( aabb );
	aabb->extents[axis] = FLT_MAX;
	FUNC1( aabb, area_tl );
	FUNC1( aabb, area_br );
}