#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vec_t ;
typedef  scalar_t__* vec3_t ;
struct TYPE_3__ {scalar_t__* origin; scalar_t__* extents; } ;
typedef  TYPE_1__ aabb_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 

void FUNC1( aabb_t *aabb, const vec3_t point ){
	int i;
	vec_t min, max, displacement;
	for ( i = 0; i < 3; i++ )
	{
		displacement = point[i] - aabb->origin[i];
		if ( FUNC0( displacement ) > aabb->extents[i] ) {
			if ( aabb->extents[i] < 0 ) { // degenerate
				min = max = point[i];
			}
			else if ( displacement > 0 ) {
				min = aabb->origin[i] - aabb->extents[i];
				max = aabb->origin[i] + displacement;
			}
			else
			{
				max = aabb->origin[i] + aabb->extents[i];
				min = aabb->origin[i] + displacement;
			}
			aabb->origin[i] = ( min + max ) * 0.5f;
			aabb->extents[i] = max - aabb->origin[i];
		}
	}
}