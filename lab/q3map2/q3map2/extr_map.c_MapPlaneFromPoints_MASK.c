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
typedef  scalar_t__ vec_t ;
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int /*<<< orphan*/  vec3_accu_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11( vec3_t *p ){
#if Q3MAP2_EXPERIMENTAL_HIGH_PRECISION_MATH_FIXES
	vec3_accu_t paccu[3];
	vec3_accu_t t1, t2, normalAccu;
	vec3_t normal;
	vec_t dist;

	VectorCopyRegularToAccu( p[0], paccu[0] );
	VectorCopyRegularToAccu( p[1], paccu[1] );
	VectorCopyRegularToAccu( p[2], paccu[2] );

	VectorSubtractAccu( paccu[0], paccu[1], t1 );
	VectorSubtractAccu( paccu[2], paccu[1], t2 );
	CrossProductAccu( t1, t2, normalAccu );
	VectorNormalizeAccu( normalAccu, normalAccu );
	// TODO: A 32 bit float for the plane distance isn't enough resolution
	// if the plane is 2^16 units away from the origin (the "epsilon" approaches
	// 0.01 in that case).
	dist = (vec_t) DotProductAccu( paccu[0], normalAccu );
	VectorCopyAccuToRegular( normalAccu, normal );

	return FindFloatPlane( normal, dist, 3, p );
#else
	vec3_t t1, t2, normal;
	vec_t dist;


	/* calc plane normal */
	FUNC9( p[ 0 ], p[ 1 ], t1 );
	FUNC9( p[ 2 ], p[ 1 ], t2 );
	FUNC0( t1, t2, normal );
	FUNC7( normal, normal );

	/* calc plane distance */
	dist = FUNC2( p[ 0 ], normal );

	/* store the plane */
	return FUNC4( normal, dist, 3, p );
#endif
}