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
typedef  float** tcMod_t ;

/* Variables and functions */
 float Q_PI ; 
 int /*<<< orphan*/  FUNC0 (float**) ; 
 int /*<<< orphan*/  FUNC1 (float**,float**,float**) ; 
 float FUNC2 (float) ; 
 int /*<<< orphan*/  FUNC3 (float**,float**,int) ; 
 float FUNC4 (float) ; 

void FUNC5( tcMod_t mod, float euler ){
	tcMod_t old, temp;
	float radians, sinv, cosv;


	FUNC3( old, mod, sizeof( tcMod_t ) );
	FUNC0( temp );

	radians = euler / 180 * Q_PI;
	sinv = FUNC4( radians );
	cosv = FUNC2( radians );

	temp[ 0 ][ 0 ] = cosv;  temp[ 0 ][ 1 ] = -sinv;
	temp[ 1 ][ 0 ] = sinv;  temp[ 1 ][ 1 ] = cosv;

	FUNC1( old, temp, mod );
}