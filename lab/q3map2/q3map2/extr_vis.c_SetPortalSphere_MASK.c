#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* origin; float radius; TYPE_2__* winding; } ;
typedef  TYPE_1__ vportal_t ;
typedef  int* vec3_t ;
struct TYPE_5__ {int numpoints; int /*<<< orphan*/ * points; } ;
typedef  TYPE_2__ fixedWinding_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 float FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 
 int* vec3_origin ; 

void FUNC4( vportal_t *p ){
	int i;
	vec3_t total, dist;
	fixedWinding_t  *w;
	float r, bestr;

	w = p->winding;
	FUNC1( vec3_origin, total );
	for ( i = 0 ; i < w->numpoints ; i++ )
	{
		FUNC0( total, w->points[i], total );
	}

	for ( i = 0 ; i < 3 ; i++ )
		total[i] /= w->numpoints;

	bestr = 0;
	for ( i = 0 ; i < w->numpoints ; i++ )
	{
		FUNC3( w->points[i], total, dist );
		r = FUNC2( dist );
		if ( r > bestr ) {
			bestr = r;
		}
	}
	FUNC1( total, p->origin );
	p->radius = bestr;
}