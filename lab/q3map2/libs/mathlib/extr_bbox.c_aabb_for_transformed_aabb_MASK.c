#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* vec_t ;
typedef  int* m4x4_t ;
struct TYPE_4__ {int* extents; int /*<<< orphan*/  origin; } ;
typedef  TYPE_1__ aabb_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int* const,int /*<<< orphan*/ ) ; 

void FUNC3( aabb_t* dst, const aabb_t* src, const m4x4_t transform ){
	FUNC0( src->origin, dst->origin );
	FUNC2( transform, dst->origin );

	dst->extents[0] = (vec_t)( FUNC1( transform[0]  * src->extents[0] )
							   + FUNC1( transform[4]  * src->extents[1] )
							   + FUNC1( transform[8]  * src->extents[2] ) );
	dst->extents[1] = (vec_t)( FUNC1( transform[1]  * src->extents[0] )
							   + FUNC1( transform[5]  * src->extents[1] )
							   + FUNC1( transform[9]  * src->extents[2] ) );
	dst->extents[2] = (vec_t)( FUNC1( transform[2]  * src->extents[0] )
							   + FUNC1( transform[6]  * src->extents[1] )
							   + FUNC1( transform[10] * src->extents[2] ) );
}