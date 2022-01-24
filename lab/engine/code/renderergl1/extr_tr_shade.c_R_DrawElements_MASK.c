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
typedef  int /*<<< orphan*/  glIndex_t ;
struct TYPE_2__ {int integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INDEX_TYPE ; 
 int /*<<< orphan*/  GL_TRIANGLES ; 
 int /*<<< orphan*/  R_ArrayElementDiscrete ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qglArrayElement ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ qglLockArraysEXT ; 
 TYPE_1__* r_primitives ; 

void FUNC2( int numIndexes, const glIndex_t *indexes ) {
	int		primitives;

	primitives = r_primitives->integer;

	// default is to use triangles if compiled vertex arrays are present
	if ( primitives == 0 ) {
		if ( qglLockArraysEXT ) {
			primitives = 2;
		} else {
			primitives = 1;
		}
	}


	if ( primitives == 2 ) {
		FUNC1( GL_TRIANGLES, 
						numIndexes,
						GL_INDEX_TYPE,
						indexes );
		return;
	}

	if ( primitives == 1 ) {
		FUNC0( numIndexes,  indexes, qglArrayElement );
		return;
	}
	
	if ( primitives == 3 ) {
		FUNC0( numIndexes,  indexes, R_ArrayElementDiscrete );
		return;
	}

	// anything else will cause no drawing
}