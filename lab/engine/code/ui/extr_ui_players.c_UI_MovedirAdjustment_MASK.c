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
typedef  double* vec3_t ;
struct TYPE_3__ {int /*<<< orphan*/  moveAngles; int /*<<< orphan*/  viewAngles; } ;
typedef  TYPE_1__ playerInfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double*,double*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 double FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*) ; 

__attribute__((used)) static float FUNC3( playerInfo_t *pi ) {
	vec3_t		relativeAngles;
	vec3_t		moveVector;

	FUNC2( pi->viewAngles, pi->moveAngles, relativeAngles );
	FUNC0( relativeAngles, moveVector, NULL, NULL );
	if ( FUNC1( moveVector[0] ) < 0.01 ) {
		moveVector[0] = 0.0;
	}
	if ( FUNC1( moveVector[1] ) < 0.01 ) {
		moveVector[1] = 0.0;
	}

	if ( moveVector[1] == 0 && moveVector[0] > 0 ) {
		return 0;
	}
	if ( moveVector[1] < 0 && moveVector[0] > 0 ) {
		return 22;
	}
	if ( moveVector[1] < 0 && moveVector[0] == 0 ) {
		return 45;
	}
	if ( moveVector[1] < 0 && moveVector[0] < 0 ) {
		return -22;
	}
	if ( moveVector[1] == 0 && moveVector[0] < 0 ) {
		return 0;
	}
	if ( moveVector[1] > 0 && moveVector[0] < 0 ) {
		return 22;
	}
	if ( moveVector[1] > 0 && moveVector[0] == 0 ) {
		return  -45;
	}

	return -22;
}