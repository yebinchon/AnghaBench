#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int vec_t ;
typedef  int* vec3_t ;
struct TYPE_7__ {int numsides; TYPE_1__* sides; } ;
typedef  TYPE_2__ brush_t ;
struct TYPE_6__ {void* planenum; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (int*,int,int,int**) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

brush_t *FUNC4( vec3_t mins, vec3_t maxs ){
	brush_t     *b;
	int i;
	vec3_t normal;
	vec_t dist;

	b = FUNC0( 6 );
	b->numsides = 6;
	for ( i = 0 ; i < 3 ; i++ )
	{
		FUNC3( normal );
		normal[i] = 1;
		dist = maxs[i];
		b->sides[i].planenum = FUNC2( normal, dist, 1, (vec3_t*) &maxs );

		normal[i] = -1;
		dist = -mins[i];
		b->sides[3 + i].planenum = FUNC2( normal, dist, 1, (vec3_t*) &mins );
	}

	FUNC1( b );

	return b;
}